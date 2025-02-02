RSRC                     VisualShader            ��������                                            r      resource_local_to_scene    resource_name    output_port_for_preview    default_input_values    expanded_output_ports    billboard_type    keep_scale    script    parameter_name 
   qualifier    texture_type    color_default    texture_filter    texture_repeat    source    texture 	   operator    op_type 	   function    hint    min    max    step    default_value_enabled    default_value    input_name 	   constant    code    graph_offset    mode    modes/blend    modes/depth_draw    modes/cull    modes/diffuse    modes/specular    flags/depth_prepass_alpha    flags/depth_test_disabled    flags/sss_mode_skin    flags/unshaded    flags/wireframe    flags/skip_vertex_transform    flags/world_vertex_coords    flags/ensure_correct_normals    flags/shadows_disabled    flags/ambient_light_disabled    flags/shadow_to_opacity    flags/vertex_lighting    flags/particle_trails    flags/alpha_to_coverage     flags/alpha_to_coverage_and_one    nodes/vertex/0/position    nodes/vertex/2/node    nodes/vertex/2/position    nodes/vertex/connections    nodes/fragment/0/position    nodes/fragment/2/node    nodes/fragment/2/position    nodes/fragment/3/node    nodes/fragment/3/position    nodes/fragment/4/node    nodes/fragment/4/position    nodes/fragment/5/node    nodes/fragment/5/position    nodes/fragment/6/node    nodes/fragment/6/position    nodes/fragment/7/node    nodes/fragment/7/position    nodes/fragment/8/node    nodes/fragment/8/position    nodes/fragment/9/node    nodes/fragment/9/position    nodes/fragment/10/node    nodes/fragment/10/position    nodes/fragment/11/node    nodes/fragment/11/position    nodes/fragment/12/node    nodes/fragment/12/position    nodes/fragment/14/node    nodes/fragment/14/position    nodes/fragment/15/node    nodes/fragment/15/position    nodes/fragment/16/node    nodes/fragment/16/position    nodes/fragment/17/node    nodes/fragment/17/position    nodes/fragment/18/node    nodes/fragment/18/position    nodes/fragment/19/node    nodes/fragment/19/position    nodes/fragment/20/node    nodes/fragment/20/position    nodes/fragment/21/node    nodes/fragment/21/position    nodes/fragment/22/node    nodes/fragment/22/position    nodes/fragment/23/node    nodes/fragment/23/position    nodes/fragment/connections    nodes/light/0/position    nodes/light/connections    nodes/start/0/position    nodes/start/connections    nodes/process/0/position    nodes/process/connections    nodes/collide/0/position    nodes/collide/connections    nodes/start_custom/0/position    nodes/start_custom/connections     nodes/process_custom/0/position !   nodes/process_custom/connections    nodes/sky/0/position    nodes/sky/connections    nodes/fog/0/position    nodes/fog/connections        (   local://VisualShaderNodeBillboard_8i25t       1   local://VisualShaderNodeTexture2DParameter_ibe5a U      &   local://VisualShaderNodeTexture_ahr5o �      &   local://VisualShaderNodeColorOp_e3rgo �      '   local://VisualShaderNodeVectorOp_645bv       &   local://VisualShaderNodeFloatOp_352pv �      (   local://VisualShaderNodeFloatFunc_icgxd �      &   local://VisualShaderNodeFloatOp_rhoxj       )   local://VisualShaderNodeSmoothStep_xb1al f      '   local://VisualShaderNodeVectorOp_1fnle �      '   local://VisualShaderNodeVectorOp_tqafd R      -   local://VisualShaderNodeFloatParameter_yqimc �      &   local://VisualShaderNodeFloatOp_lak3l 8      $   local://VisualShaderNodeInput_i0tut l      &   local://VisualShaderNodeFloatOp_r3gfe �      &   local://VisualShaderNodeFloatOp_ati4h       $   local://VisualShaderNodeClamp_12wyk l      &   local://VisualShaderNodeFloatOp_ai1u4 �      (   local://VisualShaderNodeFloatFunc_y0mje �      )   local://VisualShaderNodeSmoothStep_qvd8b        ,   local://VisualShaderNodeFloatConstant_ty274 �      )   local://VisualShaderNodeSmoothStep_optqq �         local://VisualShader_crxvk �         VisualShaderNodeBillboard                   #   VisualShaderNodeTexture2DParameter             Albedo          VisualShaderNodeTexture                                      VisualShaderNodeColorOp                      VisualShaderNodeVectorOp                                                                                           VisualShaderNodeFloatOp                      VisualShaderNodeFloatFunc                      VisualShaderNodeFloatOp                                      HC                  VisualShaderNodeSmoothStep                                      @@            ?         VisualShaderNodeVectorOp                                                                                           VisualShaderNodeVectorOp                                                                                           VisualShaderNodeFloatParameter             EmissionPower                  �@         VisualShaderNodeFloatOp                      VisualShaderNodeInput                             color          VisualShaderNodeFloatOp                                       ?         VisualShaderNodeFloatOp                                      @@                  VisualShaderNodeClamp             VisualShaderNodeFloatOp                                 )   ������ɿ         VisualShaderNodeFloatFunc                      VisualShaderNodeSmoothStep                                 )   333333�?            ?         VisualShaderNodeFloatConstant             @         VisualShaderNodeSmoothStep             VisualShader 1         �  shader_type spatial;
uniform sampler2D Albedo;
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
	vec4 n_out3p0;
// Texture2D:3
	n_out3p0 = texture(Albedo, UV);
	float n_out3p1 = n_out3p0.r;
	float n_out3p2 = n_out3p0.g;
	float n_out3p3 = n_out3p0.b;


// FloatConstant:22
	float n_out22p0 = 2.000000;


	vec3 n_out4p0;
// ColorOp:4
	{
		float base = vec3(n_out3p1).x;
		float blend = vec3(n_out22p0).x;
		if (base < 0.5) {
			n_out4p0.x = 2.0 * base * blend;
		} else {
			n_out4p0.x = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
		}
	}
	{
		float base = vec3(n_out3p1).y;
		float blend = vec3(n_out22p0).y;
		if (base < 0.5) {
			n_out4p0.y = 2.0 * base * blend;
		} else {
			n_out4p0.y = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
		}
	}
	{
		float base = vec3(n_out3p1).z;
		float blend = vec3(n_out22p0).z;
		if (base < 0.5) {
			n_out4p0.z = 2.0 * base * blend;
		} else {
			n_out4p0.z = 1.0 - 2.0 * (1.0 - blend) * (1.0 - base);
		}
	}


// Input:15
	vec4 n_out15p0 = COLOR;
	float n_out15p4 = n_out15p0.a;


// VectorOp:5
	vec4 n_out5p0 = vec4(n_out4p0, 0.0) * n_out15p0;


// FloatOp:19
	float n_in19p1 = -0.20000;
	float n_out19p0 = n_out15p4 + n_in19p1;


// Clamp:18
	float n_in18p1 = 0.00000;
	float n_in18p2 = 1.00000;
	float n_out18p0 = clamp(n_out19p0, n_in18p1, n_in18p2);


// FloatOp:17
	float n_in17p1 = 3.00000;
	float n_out17p0 = n_out18p0 * n_in17p1;


// FloatOp:16
	float n_in16p1 = 0.50000;
	float n_out16p0 = n_out17p0 + n_in16p1;


// FloatFunc:20
	float n_out20p0 = 1.0 - n_out3p1;


// SmoothStep:21
	float n_in21p0 = 0.00000;
	float n_in21p1 = 0.60000;
	float n_out21p0 = smoothstep(n_in21p0, n_in21p1, n_out3p3);


// FloatOp:14
	float n_out14p0 = n_out20p0 * n_out21p0;


// SmoothStep:23
	float n_out23p0 = smoothstep(n_out17p0, n_out16p0, n_out14p0);


// FloatFunc:7
	float n_out7p0 = 1.0 - n_out15p4;


// FloatOp:8
	float n_in8p1 = 200.00000;
	float n_out8p0 = n_out7p0 * n_in8p1;


// FloatOp:6
	float n_out6p0 = n_out3p2 * n_out8p0;


// SmoothStep:9
	float n_in9p0 = 0.00000;
	float n_in9p1 = 3.00000;
	float n_out9p0 = smoothstep(n_in9p0, n_in9p1, n_out6p0);


// VectorOp:10
	vec4 n_out10p0 = vec4(n_out9p0) * n_out15p0;


// FloatParameter:12
	float n_out12p0 = EmissionPower;


// VectorOp:11
	vec4 n_out11p0 = n_out10p0 * vec4(n_out12p0);


// Output:0
	ALBEDO = vec3(n_out5p0.xyz);
	ALPHA = n_out23p0;
	EMISSION = vec3(n_out11p0.xyz);


}
    
   ��4��E�3             4   
      �  �C5                     
   7            8   
     ��  4C9            :   
     ��   C;            <   
     C�  \C=            >   
     ��  �B?            @   
     ��  DA            B   
     *�  �CC            D   
     ��  �CE            F   
      �   DG         	   H   
     \�  \CI         
   J   
     �A  4CK            L   
     ��  �CM            N   
     %�   BO            P   
    ���   �Q            R   
     %�  ��S            T   
     M�  \�U            V   
     �  \�W            X   
     ��  \�Y            Z   
    ���  pB[            \   
    ���  4C]            ^   
     u�  �C_            `   
     ��  4�a       p                                                               	      	       
              
      
                                                                                                                                                                                                                                                                                                 RSRC