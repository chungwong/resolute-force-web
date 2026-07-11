// Fullscreen cel outline. Edge-detects from the depth + normal prepass and inks
// the edges over the rendered image — the crisp, uniform-width lines that make
// the scene read like Breath of the Wild rather than flat shaded shapes.
//
// Three edge sources, OR-combined:
//   * silhouettes  — the normal buffer's alpha is a geometry mask (1 = geometry,
//                     0 = background); a mask flip between neighbours is an outline
//   * creases      — neighbouring surface normals diverging (e.g. arm vs torso)
//   * overlaps     — depth discontinuity between two objects of similar normal
//
// WebGL2-safe: the camera runs with MSAA off (FXAA does the anti-aliasing), so the
// prepass textures are single-sampled and can be `textureLoad`-ed directly. Runs
// before tonemapping, so the target is the HDR (`Rgba16Float`) view texture.

#import bevy_core_pipeline::fullscreen_vertex_shader::FullscreenVertexOutput

struct OutlineSettings {
    // x = ink strength (0 = passthrough), y = depth threshold,
    // z = normal-divergence threshold, w = line thickness in pixels.
    params: vec4<f32>,
    // rgb = ink colour; a unused.
    ink: vec4<f32>,
};

@group(0) @binding(0) var screen_tex: texture_2d<f32>;
@group(0) @binding(1) var screen_sampler: sampler;
@group(0) @binding(2) var depth_tex: texture_depth_2d;
@group(0) @binding(3) var normal_tex: texture_2d<f32>;
@group(0) @binding(4) var<uniform> settings: OutlineSettings;

// Decode a prepass normal sample: rgb holds `n * 0.5 + 0.5`; a is the geometry
// mask (1 on geometry, 0 on cleared background).
fn load_normal(c: vec2<i32>) -> vec4<f32> {
    let raw = textureLoad(normal_tex, c, 0);
    return vec4<f32>(normalize(raw.xyz * 2.0 - vec3<f32>(1.0)), raw.a);
}

@fragment
fn fragment(in: FullscreenVertexOutput) -> @location(0) vec4<f32> {
    let base = textureSample(screen_tex, screen_sampler, in.uv);
    let strength = settings.params.x;
    if strength <= 0.0 {
        return base;
    }

    let c = vec2<i32>(in.position.xy);
    let t = max(i32(settings.params.w), 1);
    let dx = vec2<i32>(t, 0);
    let dy = vec2<i32>(0, t);

    let nc = load_normal(c);
    let nr = load_normal(c + dx);
    let nl = load_normal(c - dx);
    let nu = load_normal(c + dy);
    let nd = load_normal(c - dy);

    let zc = textureLoad(depth_tex, c, 0);
    let zr = textureLoad(depth_tex, c + dx, 0);
    let zl = textureLoad(depth_tex, c - dx, 0);
    let zu = textureLoad(depth_tex, c + dy, 0);
    let zd = textureLoad(depth_tex, c - dy, 0);

    // Silhouette: geometry mask flips between centre and a neighbour.
    let mask_edge = abs(nc.a - nr.a) + abs(nc.a - nl.a) + abs(nc.a - nu.a) + abs(nc.a - nd.a);

    // Crease: neighbouring normals diverge (summed 1 - dot across the cross).
    let n_div = (1.0 - dot(nc.xyz, nr.xyz)) + (1.0 - dot(nc.xyz, nl.xyz))
              + (1.0 - dot(nc.xyz, nu.xyz)) + (1.0 - dot(nc.xyz, nd.xyz));
    let normal_edge = step(settings.params.z, n_div);

    // Overlap: depth discontinuity (reverse-Z is nonlinear, so test relative to
    // the centre depth to stay scale-tolerant). Only on geometry.
    let z_div = (abs(zc - zr) + abs(zc - zl) + abs(zc - zu) + abs(zc - zd)) / max(zc, 1e-4);
    let depth_edge = step(settings.params.y, z_div) * step(0.5, nc.a);

    let edge = clamp(max(max(mask_edge, normal_edge), depth_edge), 0.0, 1.0) * strength;
    return vec4<f32>(mix(base.rgb, settings.ink.rgb, edge), base.a);
}
