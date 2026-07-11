// Terrain shader: extends StandardMaterial to blend a per-tile highlight map
// onto the vertex-coloured terrain. The highlight map is a small texture where
// each pixel = one grid tile; the RGB is the highlight colour, A is the blend
// strength (0 = no highlight). The shader converts world position to tile
// coordinates and samples the map.

#import bevy_pbr::{
    pbr_fragment::pbr_input_from_standard_material,
    pbr_functions::alpha_discard,
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

@group(#{MATERIAL_BIND_GROUP}) @binding(100) var highlight_map: texture_2d<f32>;
@group(#{MATERIAL_BIND_GROUP}) @binding(101) var highlight_sampler: sampler;
// x = grid_width, y = grid_depth, z = time (for pulse), w = unused.
@group(#{MATERIAL_BIND_GROUP}) @binding(102) var<uniform> terrain_params: vec4<f32>;

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
    var out: FragmentOutput;
    out.color = apply_pbr_lighting(pbr_input);

    // Grid lines at tile boundaries.
    let world_xz = in.world_position.xz;
    let frac = fract(world_xz + vec2<f32>(0.5));
    let line_width = 0.06;
    let on_edge_x = step(frac.x, line_width) + step(1.0 - line_width, frac.x);
    let on_edge_y = step(frac.y, line_width) + step(1.0 - line_width, frac.y);
    // terrain_params.w toggles the grid overlay (Settings → Battle grid).
    let grid_line = clamp(on_edge_x + on_edge_y, 0.0, 1.0) * terrain_params.w;
    out.color = vec4<f32>(
        mix(out.color.rgb, vec3<f32>(0.05, 0.05, 0.05), grid_line * 0.6),
        out.color.a
    );

    // Highlight map: one pixel per tile, sampled by world position.
    let tile = floor(world_xz + vec2<f32>(0.5));
    let grid_size = terrain_params.xy;
    let uv = (tile + vec2<f32>(0.5)) / grid_size;

    let highlight = textureSample(highlight_map, highlight_sampler, uv);
    if highlight.a > 0.01 {
        let pulse = 0.6 + 0.4 * sin(terrain_params.z * 3.0);
        let glow = highlight.rgb * pulse;
        out.color = vec4<f32>(
            mix(out.color.rgb, out.color.rgb + glow, highlight.a),
            out.color.a
        );
    }

    out.color = main_pass_post_lighting_processing(pbr_input, out.color);
#endif

    return out;
}
