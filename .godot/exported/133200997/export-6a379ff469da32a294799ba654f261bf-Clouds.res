RSRC                     VisualShader            ��������                                            V      resource_local_to_scene    resource_name    output_port_for_preview    default_input_values    expanded_output_ports 	   constant    script    parameter_name 
   qualifier    hint    min    max    step    default_value_enabled    default_value 	   operator    op_type    code    graph_offset    mode    modes/blend    modes/depth_draw    modes/cull    modes/diffuse    modes/specular    flags/depth_prepass_alpha    flags/depth_test_disabled    flags/sss_mode_skin    flags/unshaded    flags/wireframe    flags/skip_vertex_transform    flags/world_vertex_coords    flags/ensure_correct_normals    flags/shadows_disabled    flags/ambient_light_disabled    flags/shadow_to_opacity    flags/vertex_lighting    flags/particle_trails    flags/alpha_to_coverage     flags/alpha_to_coverage_and_one    nodes/vertex/0/position    nodes/vertex/connections    nodes/fragment/0/position    nodes/fragment/2/node    nodes/fragment/2/position    nodes/fragment/3/node    nodes/fragment/3/position    nodes/fragment/4/node    nodes/fragment/4/position    nodes/fragment/5/node    nodes/fragment/5/position    nodes/fragment/6/node    nodes/fragment/6/position    nodes/fragment/7/node    nodes/fragment/7/position    nodes/fragment/11/node    nodes/fragment/11/position    nodes/fragment/13/node    nodes/fragment/13/position    nodes/fragment/14/node    nodes/fragment/14/position    nodes/fragment/15/node    nodes/fragment/15/position    nodes/fragment/20/node    nodes/fragment/20/position    nodes/fragment/21/node    nodes/fragment/21/position    nodes/fragment/22/node    nodes/fragment/22/position    nodes/fragment/connections    nodes/light/0/position    nodes/light/connections    nodes/start/0/position    nodes/start/connections    nodes/process/0/position    nodes/process/connections    nodes/collide/0/position    nodes/collide/connections    nodes/start_custom/0/position    nodes/start_custom/connections     nodes/process_custom/0/position !   nodes/process_custom/connections    nodes/sky/0/position    nodes/sky/connections    nodes/fog/0/position    nodes/fog/connections        ,   local://VisualShaderNodeFloatConstant_ii8ip �      &   local://VisualShaderNodeFresnel_x5vh3       -   local://VisualShaderNodeFloatParameter_7w611 c      &   local://VisualShaderNodeFloatOp_qejj4 �      )   local://VisualShaderNodeSmoothStep_vhqud �      -   local://VisualShaderNodeColorParameter_l2x7r f      )   local://VisualShaderNodeSmoothStep_m0rpm �      &   local://VisualShaderNodeFloatOp_gdnuy 5      -   local://VisualShaderNodeFloatParameter_jvas0 i      -   local://VisualShaderNodeFloatParameter_3706i �      ,   local://VisualShaderNodeProximityFade_sehc7 E      -   local://VisualShaderNodeFloatParameter_0mnqe �      -   local://VisualShaderNodeColorParameter_qcbiu          local://VisualShader_gd6d6 b         VisualShaderNodeFloatConstant             @         VisualShaderNodeFresnel                                    �?         VisualShaderNodeFloatParameter             FresnelPower                  �?         VisualShaderNodeFloatOp                      VisualShaderNodeSmoothStep                    )   �������?      )   �������?                      VisualShaderNodeColorParameter          	   Emission                �	�>�	�>�	�>  �?         VisualShaderNodeSmoothStep                          A            A                      VisualShaderNodeFloatOp                      VisualShaderNodeFloatParameter             UpperDepthFade 	                           A         VisualShaderNodeFloatParameter             LowerDepthFade 	                           A         VisualShaderNodeProximityFade                          @         VisualShaderNodeFloatParameter             DepthDistance 	         
      
�#<         A                  @         VisualShaderNodeColorParameter             Albedo                   VisualShader           �  shader_type spatial;
render_mode depth_draw_always;

uniform vec4 Albedo : source_color = vec4(1.000000, 1.000000, 1.000000, 1.000000);
uniform float FresnelPower = 1;
uniform float LowerDepthFade : hint_range(0, 1) = 8;
uniform float UpperDepthFade : hint_range(0, 1) = 10;
uniform float DepthDistance : hint_range(0.00999999977648, 10) = 2;
uniform vec4 Emission : source_color = vec4(0.252028, 0.252028, 0.252028, 1.000000);



void fragment() {
// ColorParameter:22
	vec4 n_out22p0 = Albedo;


// FloatConstant:2
	float n_out2p0 = 2.000000;


// FloatParameter:4
	float n_out4p0 = FresnelPower;


// Fresnel:3
	float n_out3p0 = pow(clamp(dot(NORMAL, VIEW), 0.0, 1.0), n_out4p0);


// FloatOp:5
	float n_out5p0 = n_out2p0 * n_out3p0;


// SmoothStep:6
	float n_in6p0 = 1.30000;
	float n_in6p1 = 1.80000;
	float n_out6p0 = smoothstep(n_in6p0, n_in6p1, n_out5p0);


// FloatParameter:15
	float n_out15p0 = LowerDepthFade;


// FloatParameter:14
	float n_out14p0 = UpperDepthFade;


// FloatParameter:21
	float n_out21p0 = DepthDistance;


	float n_out20p0;
// ProximityFade:20
	{
		float __depth_tex = textureLod(DEPTH_TEXTURE, SCREEN_UV, 0.0).r;
		vec4 __depth_world_pos = INV_PROJECTION_MATRIX * vec4(SCREEN_UV * 2.0 - 1.0, __depth_tex, 1.0);
		__depth_world_pos.xyz /= __depth_world_pos.w;
		n_out20p0 = clamp(1.0 - smoothstep(__depth_world_pos.z + n_out21p0, __depth_world_pos.z, VERTEX.z), 0.0, 1.0);
	}


// SmoothStep:11
	float n_out11p0 = smoothstep(n_out15p0, n_out14p0, n_out20p0);


// FloatOp:13
	float n_out13p0 = min(n_out6p0, n_out11p0);


// ColorParameter:7
	vec4 n_out7p0 = Emission;


// Output:0
	ALBEDO = vec3(n_out22p0.xyz);
	ALPHA = n_out13p0;
	EMISSION = vec3(n_out7p0.xyz);


}
    
   F�'ĿNB         *   
     �C   C+             ,   
     C�  �C-            .   
     �  4C/            0   
    ���  4C1            2   
     \�  pC3            4   
     p�  4C5            6   
     ��  �C7            8   
     ��  �C9            :   
     C  pC;            <   
    ���  D=         	   >   
     ��  �C?         
   @   
     �  %DA            B   
    ���  CDC            D   
      �  p�E       4                                                                                                                                                                                          RSRC