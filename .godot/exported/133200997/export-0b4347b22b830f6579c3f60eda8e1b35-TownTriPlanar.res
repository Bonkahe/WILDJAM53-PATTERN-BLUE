RSRC                     VisualShader            ��������                                            O      resource_local_to_scene    resource_name    output_port_for_preview    default_input_values    expanded_output_ports    parameter_name 
   qualifier    texture_type    color_default    texture_filter    texture_repeat    script    op_type 	   constant    hint    min    max    step    default_value_enabled    default_value    code    graph_offset    mode    modes/blend    modes/depth_draw    modes/cull    modes/diffuse    modes/specular    flags/depth_prepass_alpha    flags/depth_test_disabled    flags/sss_mode_skin    flags/unshaded    flags/wireframe    flags/skip_vertex_transform    flags/world_vertex_coords    flags/ensure_correct_normals    flags/shadows_disabled    flags/ambient_light_disabled    flags/shadow_to_opacity    flags/vertex_lighting    flags/particle_trails    flags/alpha_to_coverage     flags/alpha_to_coverage_and_one    nodes/vertex/0/position    nodes/vertex/connections    nodes/fragment/0/position    nodes/fragment/2/node    nodes/fragment/2/position    nodes/fragment/3/node    nodes/fragment/3/position    nodes/fragment/4/node    nodes/fragment/4/position    nodes/fragment/5/node    nodes/fragment/5/position    nodes/fragment/6/node    nodes/fragment/6/position    nodes/fragment/7/node    nodes/fragment/7/position    nodes/fragment/8/node    nodes/fragment/8/position    nodes/fragment/9/node    nodes/fragment/9/position    nodes/fragment/connections    nodes/light/0/position    nodes/light/connections    nodes/start/0/position    nodes/start/connections    nodes/process/0/position    nodes/process/connections    nodes/collide/0/position    nodes/collide/connections    nodes/start_custom/0/position    nodes/start_custom/connections     nodes/process_custom/0/position !   nodes/process_custom/connections    nodes/sky/0/position    nodes/sky/connections    nodes/fog/0/position    nodes/fog/connections     	   8   local://VisualShaderNodeTextureParameterTriplanar_r2y0j �	      &   local://VisualShaderNodeFresnel_3lanh #
      "   local://VisualShaderNodeMix_hhqnw w
      ,   local://VisualShaderNodeColorConstant_x0rk7       )   local://VisualShaderNodeSmoothStep_otnps 5      -   local://VisualShaderNodeFloatParameter_brgva �      "   local://VisualShaderNodeMix_6hjua 
      -   local://VisualShaderNodeFloatParameter_hoohv �         local://VisualShader_tpoa8 �      *   VisualShaderNodeTextureParameterTriplanar             Albedo          VisualShaderNodeFresnel                                      @         VisualShaderNodeMix                                                  �?  �?  �?  �?            ?   ?   ?   ?                  VisualShaderNodeColorConstant             VisualShaderNodeSmoothStep                         �>            ?            ?         VisualShaderNodeFloatParameter             HighlightBlend                           �?         VisualShaderNodeMix                                                  �?  �?  �?  �?            ?   ?   ?   ?                  VisualShaderNodeFloatParameter          
   Roughness                            VisualShader          �  shader_type spatial;
uniform sampler2D Albedo;
uniform float Roughness : hint_range(0, 1) = 0;
uniform float HighlightBlend : hint_range(0, 1) = 1;


// TextureUniformTriplanar
	vec4 triplanar_texture(sampler2D p_sampler, vec3 p_weights, vec3 p_triplanar_pos) {
		vec4 samp = vec4(0.0);
		samp += texture(p_sampler, p_triplanar_pos.xy) * p_weights.z;
		samp += texture(p_sampler, p_triplanar_pos.xz) * p_weights.y;
		samp += texture(p_sampler, p_triplanar_pos.zy * vec2(-1.0, 1.0)) * p_weights.x;
		return samp;
	}

	uniform vec3 triplanar_scale = vec3(1.0, 1.0, 1.0);
	uniform vec3 triplanar_offset;
	uniform float triplanar_sharpness = 0.5;

	varying vec3 triplanar_power_normal;
	varying vec3 triplanar_pos;

void vertex() {
// TextureUniformTriplanar
	{
		triplanar_power_normal = pow(abs(NORMAL), vec3(triplanar_sharpness));
		triplanar_power_normal /= dot(triplanar_power_normal, vec3(1.0));
		triplanar_pos = VERTEX * triplanar_scale + triplanar_offset;
		triplanar_pos *= vec3(1.0, -1.0, 1.0);
	}
}

void fragment() {
// TextureUniformTriplanar:2
	vec4 n_out2p0 = triplanar_texture(Albedo, triplanar_power_normal, triplanar_pos);


// FloatParameter:9
	float n_out9p0 = Roughness;


// ColorConstant:5
	vec4 n_out5p0 = vec4(1.000000, 1.000000, 1.000000, 1.000000);


// Fresnel:3
	float n_in3p3 = 2.50000;
	float n_out3p0 = pow(1.0 - clamp(dot(NORMAL, VIEW), 0.0, 1.0), n_in3p3);


// SmoothStep:6
	float n_in6p0 = 0.25000;
	float n_in6p1 = 0.50000;
	float n_out6p0 = smoothstep(n_in6p0, n_in6p1, n_out3p0);


// Mix:4
	vec4 n_in4p0 = vec4(0.00000, 0.00000, 0.00000, 0.00000);
	vec4 n_out4p0 = mix(n_in4p0, n_out5p0, vec4(n_out6p0));


// FloatParameter:7
	float n_out7p0 = HighlightBlend;


// Mix:8
	vec4 n_in8p0 = vec4(0.00000, 0.00000, 0.00000, 0.00000);
	vec4 n_out8p0 = mix(n_in8p0, n_out4p0, vec4(n_out7p0));


// Output:0
	ALBEDO = vec3(n_out2p0.xyz);
	ROUGHNESS = n_out9p0;
	EMISSION = vec3(n_out8p0.xyz);


}
    
   ���>��.             /   
     H�   B0            1   
     u�  D2            3   
     ��  �C4            5   
     *�  �C6            7   
     %�  D8            9   
     4�  �C:            ;   
     �B  �C<            =   
     H�  p�>                                                                                                         	                    RSRC