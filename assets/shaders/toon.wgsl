// Wind-Waker-style cel shader, ported to Bevy 0.19. Instead of faking a single
// sun like the old version, this *extends* `StandardMaterial`: it runs Bevy's real
// PBR lighting (all lights + real shadows + ambient), then quantises the lit
// intensity into a soft two-tone — an authored shadow colour and highlight colour
// — and multiplies the albedo back in. That two-tone-then-texture step is what
// gives the storybook Zelda look. A BotW-style fresnel rim makes the silhouette
// pop. Adapted from github.com/janhohenheim/bevy_wind_waker_shader (MIT/Apache).

#import bevy_pbr::{
    pbr_fragment::pbr_input_from_standard_material,
    pbr_functions::alpha_discard,
    mesh_view_bindings as view_bindings,
}

#ifdef PREPASS_PIPELINE
#import bevy_pbr::{
    prepass_io::{VertexOutput, FragmentOutput},
    pbr_deferred_functions::deferred_output,
}
#else
#import bevy_pbr::{
    forward_io::{VertexOutput, FragmentOutput},
    pbr_functions::{apply_pbr_lighting, main_pass_post_lighting_processing},
}
#endif

// Extension bindings live in the material group at slots 100+ (0-99 belong to the
// base StandardMaterial). Bevy injects the group index via MATERIAL_BIND_GROUP.
//
// The ramp texture maps lighting intensity (u = 0 shadow → 1 lit) to an RGB tint.
// Hard steps in the texture give cel bands; smooth gradients give painterly looks.
@group(#{MATERIAL_BIND_GROUP}) @binding(100) var ramp_texture: texture_2d<f32>;
@group(#{MATERIAL_BIND_GROUP}) @binding(101) var ramp_sampler: sampler;
@group(#{MATERIAL_BIND_GROUP}) @binding(102) var<uniform> rim_color: vec4<f32>;
// x = rim strength, y = effect strength, z/w unused.
@group(#{MATERIAL_BIND_GROUP}) @binding(103) var<uniform> params: vec4<f32>;
// x = posterise levels (<2 = off), y = saturation boost, z/w unused.
@group(#{MATERIAL_BIND_GROUP}) @binding(104) var<uniform> flatten: vec4<f32>;

@fragment
fn fragment(
    in: VertexOutput,
    @builtin(front_facing) is_front: bool,
) -> FragmentOutput {
    var pbr_input = pbr_input_from_standard_material(in, is_front);
    pbr_input.material.base_color =
        alpha_discard(pbr_input.material, pbr_input.material.base_color);

#ifdef PREPASS_PIPELINE
    let out = deferred_output(in, pbr_input);
#else
    // Keep the albedo (texture × vertex colour × base_color), then light a *white*
    // model so the quantisation key is pure lighting intensity.
    let albedo = pbr_input.material.base_color;
    pbr_input.material.base_color = vec4<f32>(1.0, 1.0, 1.0, 1.0);

    var out: FragmentOutput;
    out.color = apply_pbr_lighting(pbr_input);

    let strength = params.y;
    if strength > 0.0 {
        // Sample the ramp texture by lighting intensity — the texture defines
        // the shadow-to-highlight tint (hard steps = cel bands, smooth = painterly).
        let intensity = clamp(dot(out.color.rgb, vec3<f32>(0.2126, 0.7152, 0.0722)), 0.0, 1.0);
        let toon = textureSample(ramp_texture, ramp_sampler, vec2<f32>(intensity, 0.5)).rgb;

        // Albedo is already toon-friendly (textures are processed at load time).
        // Just boost saturation if requested.
        var alb = albedo.rgb;
        let luma = dot(alb, vec3<f32>(0.2126, 0.7152, 0.0722));
        alb = max(mix(vec3<f32>(luma), alb, flatten.y), vec3<f32>(0.0));

        let coloured = toon * alb;

        // BotW-style fresnel rim toward the silhouette.
        let eye = normalize(view_bindings::view.world_position.xyz - in.world_position.xyz);
        let rim = 1.0 - abs(dot(eye, normalize(in.world_normal)));
        let rim_factor = pow(rim, 4.0) * params.x;
        let shaded = mix(coloured, rim_color.rgb, rim_factor);

        // Blend by strength so the toggle can fade the cel look in/out.
        out.color = vec4<f32>(mix(out.color.rgb, shaded, strength), albedo.a);
    }

    out.color = main_pass_post_lighting_processing(pbr_input, out.color);
#endif

    return out;
}
