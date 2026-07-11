// Procedural emissive fireball on a camera-facing quad. Additive blend (set via
// the material's AlphaMode::Add) plus the camera's HDR bloom turn the emissive
// output into glow. No PBR lighting — we compute and output colour directly.
//
// Technique A of the Fire VFX bake-off. The same flame math is ported to the CPU
// in vfx_flipbook.rs (technique B) so the two read as the same flame.

#import bevy_pbr::forward_io::VertexOutput

// Plain Material bindings live in the material group (slot index injected as
// MATERIAL_BIND_GROUP), starting at binding 0.
// params: x = time (secs), y = age (secs), z = lifetime (secs), w = intensity.
@group(#{MATERIAL_BIND_GROUP}) @binding(0) var<uniform> params: vec4<f32>;
// tint: rgb = mid-flame colour, a = dissolve edge softness.
@group(#{MATERIAL_BIND_GROUP}) @binding(1) var<uniform> tint: vec4<f32>;

fn hash2(p: vec2<f32>) -> f32 {
    let h = dot(p, vec2<f32>(127.1, 311.7));
    return fract(sin(h) * 43758.5453123);
}

fn vnoise(p: vec2<f32>) -> f32 {
    let i = floor(p);
    let f = fract(p);
    let u = f * f * (3.0 - 2.0 * f);
    let a = hash2(i + vec2<f32>(0.0, 0.0));
    let b = hash2(i + vec2<f32>(1.0, 0.0));
    let c = hash2(i + vec2<f32>(0.0, 1.0));
    let d = hash2(i + vec2<f32>(1.0, 1.0));
    return mix(mix(a, b, u.x), mix(c, d, u.x), u.y);
}

fn fbm(p: vec2<f32>) -> f32 {
    var v = 0.0;
    var amp = 0.5;
    var q = p;
    for (var i = 0; i < 4; i = i + 1) {
        v = v + amp * vnoise(q);
        q = q * 2.0;
        amp = amp * 0.5;
    }
    return v;
}

@fragment
fn fragment(in: VertexOutput) -> @location(0) vec4<f32> {
    let uv = in.uv;                          // 0..1 across the quad
    let centered = uv - vec2<f32>(0.5);
    let r = length(centered) * 2.0;          // 0 centre .. ~1 edge

    let t = params.x;
    let age = params.y;
    let life = max(params.z, 0.001);
    let p01 = clamp(age / life, 0.0, 1.0);

    // Upward-scrolling turbulent noise (flames rise → subtract t from v).
    let nuv = vec2<f32>(uv.x * 3.0, uv.y * 3.0 - t * 2.2);
    let n = fbm(nuv + fbm(nuv * 0.5));       // domain-warped fbm → wispier flames

    // Flame body: brightest at the lower centre, eaten away toward the edge.
    let radial = 1.0 - smoothstep(0.0, 1.0, r);
    let d = radial * (0.55 + 0.6 * n) - r * 0.35;

    // Burn-away dissolve over the lifetime: raise the cut threshold with age.
    let dissolve = mix(-0.05, 0.85, p01);
    let edge = max(tint.a, 0.01);
    let mask = smoothstep(dissolve, dissolve + edge, d);

    // Colour ramp by local heat: deep red → orange → yellow → white core.
    let heat = clamp(d * 1.3, 0.0, 1.0);
    let deep = vec3<f32>(0.6, 0.05, 0.0);
    let mid = tint.rgb * 2.0;                 // pushed for bloom
    let hot = vec3<f32>(1.0, 0.9, 0.4);
    let core = vec3<f32>(1.0, 1.0, 0.95);
    var col = mix(deep, mid, smoothstep(0.0, 0.4, heat));
    col = mix(col, hot, smoothstep(0.4, 0.75, heat));
    col = mix(col, core, smoothstep(0.85, 1.0, heat));

    // Bright thin rim at the burning edge (embers).
    let rim = smoothstep(dissolve, dissolve + edge * 0.4, d)
            - smoothstep(dissolve + edge * 0.4, dissolve + edge, d);
    col = col + hot * rim * 1.5;

    let intensity = params.w;
    let alpha = mask * radial;
    // Additive: premultiply by alpha so the blend reads as emissive glow.
    return vec4<f32>(col * intensity * 4.0 * alpha, alpha);
}
