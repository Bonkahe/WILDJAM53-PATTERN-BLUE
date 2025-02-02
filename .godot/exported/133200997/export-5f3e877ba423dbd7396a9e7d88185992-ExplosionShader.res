RSRC                     VisualShader            ��������                                            s      resource_local_to_scene    resource_name    output_port_for_preview    default_input_values    expanded_output_ports    billboard_type    keep_scale    script    input_name    source    texture    texture_type 	   function 	   operator    op_type 	   constant    parameter_name 
   qualifier    hint    min    max    step    default_value_enabled    default_value    code    graph_offset    mode    modes/blend    modes/depth_draw    modes/cull    modes/diffuse    modes/specular    flags/depth_prepass_alpha    flags/depth_test_disabled    flags/sss_mode_skin    flags/unshaded    flags/wireframe    flags/skip_vertex_transform    flags/world_vertex_coords    flags/ensure_correct_normals    flags/shadows_disabled    flags/ambient_light_disabled    flags/shadow_to_opacity    flags/vertex_lighting    flags/particle_trails    flags/alpha_to_coverage     flags/alpha_to_coverage_and_one    nodes/vertex/0/position    nodes/vertex/2/node    nodes/vertex/2/position    nodes/vertex/connections    nodes/fragment/0/position    nodes/fragment/3/node    nodes/fragment/3/position    nodes/fragment/4/node    nodes/fragment/4/position    nodes/fragment/5/node    nodes/fragment/5/position    nodes/fragment/6/node    nodes/fragment/6/position    nodes/fragment/7/node    nodes/fragment/7/position    nodes/fragment/8/node    nodes/fragment/8/position    nodes/fragment/9/node    nodes/fragment/9/position    nodes/fragment/10/node    nodes/fragment/10/position    nodes/fragment/11/node    nodes/fragment/11/position    nodes/fragment/12/node    nodes/fragment/12/position    nodes/fragment/13/node    nodes/fragment/13/position    nodes/fragment/14/node    nodes/fragment/14/position    nodes/fragment/15/node    nodes/fragment/15/position    nodes/fragment/16/node    nodes/fragment/16/position    nodes/fragment/18/node    nodes/fragment/18/position    nodes/fragment/19/node    nodes/fragment/19/position    nodes/fragment/20/node    nodes/fragment/20/position    nodes/fragment/21/node    nodes/fragment/21/position    nodes/fragment/22/node    nodes/fragment/22/position    nodes/fragment/23/node    nodes/fragment/23/position    nodes/fragment/24/node    nodes/fragment/24/position    nodes/fragment/25/node    nodes/fragment/25/position    nodes/fragment/26/node    nodes/fragment/26/position    nodes/fragment/connections    nodes/light/0/position    nodes/light/connections    nodes/start/0/position    nodes/start/connections    nodes/process/0/position    nodes/process/connections    nodes/collide/0/position    nodes/collide/connections    nodes/start_custom/0/position    nodes/start_custom/connections     nodes/process_custom/0/position !   nodes/process_custom/connections    nodes/sky/0/position    nodes/sky/connections    nodes/fog/0/position    nodes/fog/connections        (   local://VisualShaderNodeBillboard_gpof5 �      $   local://VisualShaderNodeInput_6dlgl       &   local://VisualShaderNodeTexture_sj708 Q      (   local://VisualShaderNodeFloatFunc_swcfj �      &   local://VisualShaderNodeFloatOp_yl04e �      )   local://VisualShaderNodeSmoothStep_2uo5k '      &   local://VisualShaderNodeColorOp_sepng R      ,   local://VisualShaderNodeFloatConstant_ualwh �      '   local://VisualShaderNodeVectorOp_gf02r �      &   local://VisualShaderNodeFloatOp_rj4f4 E      (   local://VisualShaderNodeFloatFunc_8x3pw y      &   local://VisualShaderNodeFloatOp_51kld �      )   local://VisualShaderNodeSmoothStep_6t3dy       '   local://VisualShaderNodeVectorOp_ainuu v      &   local://VisualShaderNodeFloatOp_bvfqa �      '   local://VisualShaderNodeVectorOp_gmhvh [      -   local://VisualShaderNodeFloatParameter_b815a �      &   local://VisualShaderNodeFloatOp_kp0hy A      )   local://VisualShaderNodeSmoothStep_awpij u      &   local://VisualShaderNodeFloatOp_it3gk �      $   local://VisualShaderNodeClamp_h6lc6 8      ,   local://VisualShaderNodeProximityFade_chdly ^      -   local://VisualShaderNodeFloatParameter_602s7 �      &   local://VisualShaderNodeFloatOp_i5a48 �         local://VisualShader_rg0b1          VisualShaderNodeBillboard                               VisualShaderNodeInput                             color          VisualShaderNodeTexture                                      VisualShaderNodeFloatFunc                      VisualShaderNodeFloatOp                                 )   �������?         VisualShaderNodeSmoothStep             VisualShaderNodeColorOp                      VisualShaderNodeFloatConstant             @         VisualShaderNodeVectorOp                                                                                           VisualShaderNodeFloatOp                      VisualShaderNodeFloatFunc                      VisualShaderNodeFloatOp                                      HC                  VisualShaderNodeSmoothStep                                      @@            ?         VisualShaderNodeVectorOp                                                                                           VisualShaderNodeFloatOp                                      @@                  VisualShaderNodeVectorOp                                                                                           VisualShaderNodeFloatParameter             EmissionPower                  �@         VisualShaderNodeFloatOp                      VisualShaderNodeSmoothStep                                 )   �������?            ?         VisualShaderNodeFloatOp                                 )   ������ɿ         VisualShaderNodeClamp             VisualShaderNodeProximityFade             VisualShaderNodeFloatParameter             ProximityFadeDistance          VisualShaderNodeFloatOp                      VisualShader 6         �  shader_type spatial;
uniform sampler2D tex_frg_4 : source_color;
uniform float ProximityFadeDistance;
uniform float EmissionPower = 5;



void vertex() {
	mat4 n_out2p0;
// GetBillboardMatrix:2
	{
		mat4 __wm = mat4(normalize(INV_VIEW_MATRIX[0]) * length(MODEL_MATRIX[0]), normalize(INV_VIEW_MATRIX[1]) * length(MODEL_MATRIX[0]), normalize(INV_VIEW_MATRIX[2]) * length(MODEL_MATRIX[2]), MODEL_MATRIX[3]);
		__wm = __wm * mat4(vec4(cos(INSTANCE_CUSTOM.x), -sin(INSTANCE_CUSTOM.x), 0.0, 0.0), vec4(sin(INSTANCE_CUSTOM.x), cos(INSTANCE_CUSTOM.x), 0.0, 0.0), vec4(0.0, 0.0, 1.0, 0.0), vec4(0.0, 0.0, 0.0, 1.0));
		n_out2p0 = VIEW_MATRIX * __wm;
	}


// Output:0
	MODELVIEW_MATRIX = n_out2p0;


}

void fragment() {
// Texture2D:4
	vec4 n_out4p0 = texture(tex_frg_4, UV);
	float n_out4p1 = n_out4p0.r;
	float n_out4p2 = n_out4p0.g;
	float n_out4p3 = n_out4p0.b;


// FloatConstant:9
	float n_out9p0 = 2.000000;


	vec3 n_out8p0;
// ColorOp:8
	{
		float base = vec3(n_out4p1).x;
		float blend = vec3(n_out9p0).x;
		if (base < 0.5) {
			n_out8p0.x = 2.0 * base * blend;
		} else {
			n_out8p0.x = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
		}
	}
	{
		float base = vec3(n_out4p1).y;
		float blend = vec3(n_out9p0).y;
		if (base < 0.5) {
			n_out8p0.y = 2.0 * base * blend;
		} else {
			n_out8p0.y = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
		}
	}
	{
		float base = vec3(n_out4p1).z;
		float blend = vec3(n_out9p0).z;
		if (base < 0.5) {
			n_out8p0.z = 2.0 * base * blend;
		} else {
			n_out8p0.z = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
		}
	}


// Input:3
	vec4 n_out3p0 = COLOR;
	float n_out3p4 = n_out3p0.a;


// VectorOp:10
	vec4 n_out10p0 = vec4(n_out8p0, 0.0) * n_out3p0;


// FloatParameter:25
	float n_out25p0 = ProximityFadeDistance;


	float n_out24p0;
// ProximityFade:24
	{
		float __depth_tex = textureLod(DEPTH_TEXTURE, SCREEN_UV, 0.0).r;
		vec4 __depth_world_pos = INV_PROJECTION_MATRIX * vec4(SCREEN_UV * 2.0 - 1.0, __depth_tex, 1.0);
		__depth_world_pos.xyz /= __depth_world_pos.w;
		n_out24p0 = clamp(1.0 - smoothstep(__depth_world_pos.z + n_out25p0, __depth_world_pos.z, VERTEX.z), 0.0, 1.0);
	}


// FloatOp:22
	float n_in22p1 = -0.20000;
	float n_out22p0 = n_out3p4 + n_in22p1;


// Clamp:23
	float n_in23p1 = 0.00000;
	float n_in23p2 = 1.00000;
	float n_out23p0 = clamp(n_out22p0, n_in23p1, n_in23p2);


// FloatOp:16
	float n_in16p1 = 3.00000;
	float n_out16p0 = n_out23p0 * n_in16p1;


// FloatOp:6
	float n_in6p1 = 0.10000;
	float n_out6p0 = n_out16p0 + n_in6p1;


// FloatFunc:5
	float n_out5p0 = 1.0 - n_out4p1;


// SmoothStep:21
	float n_in21p0 = 0.00000;
	float n_in21p1 = 0.40000;
	float n_out21p0 = smoothstep(n_in21p0, n_in21p1, n_out4p3);


// FloatOp:20
	float n_out20p0 = n_out5p0 * n_out21p0;


// SmoothStep:7
	float n_out7p0 = smoothstep(n_out16p0, n_out6p0, n_out20p0);


// FloatOp:26
	float n_out26p0 = n_out24p0 * n_out7p0;


// FloatFunc:12
	float n_out12p0 = 1.0 - n_out3p4;


// FloatOp:13
	float n_in13p1 = 200.00000;
	float n_out13p0 = n_out12p0 * n_in13p1;


// FloatOp:11
	float n_out11p0 = n_out4p2 * n_out13p0;


// SmoothStep:14
	float n_in14p0 = 0.00000;
	float n_in14p1 = 3.00000;
	float n_out14p0 = smoothstep(n_in14p0, n_in14p1, n_out11p0);


// VectorOp:15
	vec4 n_out15p0 = vec4(n_out14p0) * n_out3p0;


// FloatParameter:19
	float n_out19p0 = EmissionPower;


// VectorOp:18
	vec4 n_out18p0 = n_out15p0 * vec4(n_out19p0);


// Output:0
	ALBEDO = vec3(n_out10p0.xyz);
	ALPHA = n_out26p0;
	EMISSION = vec3(n_out18p0.xyz);


}
    
   ��E�!�9�0             1   
   ZDà��C2                     
   3   
     9D  �B4            5   
     ��  �B6            7   
     ��  �C8            9   
     �  �C:            ;   
      �  4C<            =   
      B  �B>            ?   
     ��  �C@            A   
     ��  DB            C   
      B  �CD         	   E   
      C  HDF         
   G   
     4�  DH            I   
          DJ            K   
   ��CTScDL            M   
     �C  �CN            O   
     ��  pBP            Q   
     D  �CR            S   
     �C   DT            U   
      �  �CV            W   
     �  �CX            Y   
     /�  pBZ            [   
     �  pB\            ]   
   ��B����^            _   
     p�   �`            a   
     �C   Cb       x                	                    
              
                                                                                                   
                                                                                                                                                                                                                                                                        RSRC