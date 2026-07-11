// Technique B of the Fire VFX bake-off: sample one frame of a baked fire
// sprite-sheet and output it additively (the camera bloom does the glow). The
// CPU bakes the sheet in vfx_flipbook.rs using the same flame math as the shader
// fire, so A and B read as the same flame in two pipelines.

#import bevy_pbr::forward_io::VertexOutput

@group(#{MATERIAL_BIND_GROUP}) @binding(0) var sheet: texture_2d<f32>;
@group(#{MATERIAL_BIND_GROUP}) @binding(1) var sheet_sampler: sampler;
// x = cols, y = rows, z = current frame index, w = intensity.
@group(#{MATERIAL_BIND_GROUP}) @binding(2) var<uniform> frame: vec4<f32>;

@fragment
fn fragment(in: VertexOutput) -> @location(0) vec4<f32> {
    let cols = frame.x;
    let rows = frame.y;
    let cell = frame.z;
    let cx = cell % cols;
    let cy = floor(cell / cols);
    let cell_uv = (in.uv + vec2<f32>(cx, cy)) / vec2<f32>(cols, rows);
    let s = textureSample(sheet, sheet_sampler, cell_uv);
    // Additive blend (AlphaMode::Add) multiplies rgb by src alpha, so the sheet's
    // alpha shapes the flame and `intensity` (>1) pushes it into bloom.
    return vec4<f32>(s.rgb * frame.w, s.a);
}
