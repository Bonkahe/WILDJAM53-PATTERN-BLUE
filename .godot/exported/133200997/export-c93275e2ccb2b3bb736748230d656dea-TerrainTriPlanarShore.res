RSRC                     VisualShader            ��������                                            {      resource_local_to_scene    resource_name    output_port_for_preview    default_input_values    expanded_output_ports    input_name    script 	   operator    op_type 	   constant    parameter_name 
   qualifier    texture_type    color_default    texture_filter    texture_repeat    code    graph_offset    mode    modes/blend    modes/depth_draw    modes/cull    modes/diffuse    modes/specular    flags/depth_prepass_alpha    flags/depth_test_disabled    flags/sss_mode_skin    flags/unshaded    flags/wireframe    flags/skip_vertex_transform    flags/world_vertex_coords    flags/ensure_correct_normals    flags/shadows_disabled    flags/ambient_light_disabled    flags/shadow_to_opacity    flags/vertex_lighting    flags/particle_trails    flags/alpha_to_coverage     flags/alpha_to_coverage_and_one    nodes/vertex/0/position    nodes/vertex/connections    nodes/fragment/0/position    nodes/fragment/7/node    nodes/fragment/7/position    nodes/fragment/9/node    nodes/fragment/9/position    nodes/fragment/11/node    nodes/fragment/11/position    nodes/fragment/12/node    nodes/fragment/12/position    nodes/fragment/13/node    nodes/fragment/13/position    nodes/fragment/14/node    nodes/fragment/14/position    nodes/fragment/15/node    nodes/fragment/15/position    nodes/fragment/16/node    nodes/fragment/16/position    nodes/fragment/17/node    nodes/fragment/17/position    nodes/fragment/18/node    nodes/fragment/18/position    nodes/fragment/19/node    nodes/fragment/19/position    nodes/fragment/20/node    nodes/fragment/20/position    nodes/fragment/21/node    nodes/fragment/21/position    nodes/fragment/26/node    nodes/fragment/26/position    nodes/fragment/31/node    nodes/fragment/31/position    nodes/fragment/32/node    nodes/fragment/32/position    nodes/fragment/33/node    nodes/fragment/33/position    nodes/fragment/34/node    nodes/fragment/34/position    nodes/fragment/35/node    nodes/fragment/35/position    nodes/fragment/36/node    nodes/fragment/36/position    nodes/fragment/37/node    nodes/fragment/37/position    nodes/fragment/38/node    nodes/fragment/38/position    nodes/fragment/39/node    nodes/fragment/39/position    nodes/fragment/41/node    nodes/fragment/41/position    nodes/fragment/42/node    nodes/fragment/42/position    nodes/fragment/43/node    nodes/fragment/43/position    nodes/fragment/44/node    nodes/fragment/44/position    nodes/fragment/45/node    nodes/fragment/45/position    nodes/fragment/46/node    nodes/fragment/46/position    nodes/fragment/47/node    nodes/fragment/47/position    nodes/fragment/48/node    nodes/fragment/48/position    nodes/fragment/49/node    nodes/fragment/49/position    nodes/fragment/connections    nodes/light/0/position    nodes/light/connections    nodes/start/0/position    nodes/start/connections    nodes/process/0/position    nodes/process/connections    nodes/collide/0/position    nodes/collide/connections    nodes/start_custom/0/position    nodes/start_custom/connections     nodes/process_custom/0/position !   nodes/process_custom/connections    nodes/sky/0/position    nodes/sky/connections    nodes/fog/0/position    nodes/fog/connections     !   $   local://VisualShaderNodeInput_6823n       $   local://VisualShaderNodeInput_4fys5 O      /   local://VisualShaderNodeTransformVecMult_v4r63 �      .   local://VisualShaderNodeVectorDecompose_37mjo �      &   local://VisualShaderNodeFloatOp_f3mii �      ,   local://VisualShaderNodeFloatConstant_shtl6       "   local://VisualShaderNodeMix_5d4c3 K      ,   local://VisualShaderNodeColorConstant_efm56 �      ,   local://VisualShaderNodeColorConstant_yern0 !      ,   local://VisualShaderNodeFloatConstant_kb6fr g      &   local://VisualShaderNodeFloatOp_cra1u �      "   local://VisualShaderNodeMix_vgv2r �      ,   local://VisualShaderNodeColorConstant_ekg27 Y      $   local://VisualShaderNodeClamp_qmdgy �      )   local://VisualShaderNodeSmoothStep_jpui7 1      )   local://VisualShaderNodeSmoothStep_0wkcd �      8   local://VisualShaderNodeTextureParameterTriplanar_f6dr7       '   local://VisualShaderNodeVectorOp_sxebe d      8   local://VisualShaderNodeTextureParameterTriplanar_cdla5 �      "   local://VisualShaderNodeMix_dqusf 9      ,   local://VisualShaderNodeFloatConstant_wej4c �      &   local://VisualShaderNodeFresnel_6a7se       &   local://VisualShaderNodeFloatOp_gjaof W      ,   local://VisualShaderNodeColorConstant_76olw �      '   local://VisualShaderNodeVectorOp_ow2ah �      ,   local://VisualShaderNodeFloatConstant_t2uwg �      &   local://VisualShaderNodeFloatOp_bv78c �      )   local://VisualShaderNodeSmoothStep_lb77e �      "   local://VisualShaderNodeMix_a5hy1 W      $   local://VisualShaderNodeClamp_nnerb �      ,   local://VisualShaderNodeColorConstant_0xg7y y      &   local://VisualShaderNodeFloatOp_2246a �         local://VisualShader_5x5mf �         VisualShaderNodeInput             inv_view_matrix          VisualShaderNodeInput             vertex       !   VisualShaderNodeTransformVecMult              VisualShaderNodeVectorDecompose             VisualShaderNodeFloatOp             VisualShaderNodeFloatConstant    	        @@         VisualShaderNodeMix                                                  �?  �?  �?  �?            ?   ?   ?   ?                  VisualShaderNodeColorConstant    	      �{1?�� ?��>  �?         VisualShaderNodeColorConstant    	      �?K&#<,
4  �?         VisualShaderNodeFloatConstant    	        �@         VisualShaderNodeFloatOp             VisualShaderNodeMix                                                  �?  �?  �?  �?            ?   ?   ?   ?                  VisualShaderNodeColorConstant    	      j��>*��>      �?         VisualShaderNodeClamp                                                                           �?  �?  �?  �?                  VisualShaderNodeSmoothStep                    )   �Zd;�?      )   ������@      )   �Zd;��         VisualShaderNodeSmoothStep                    )   ��K7��?      )   o��ʡ�?      )   �Zd;��      *   VisualShaderNodeTextureParameterTriplanar    
         Albedo          VisualShaderNodeVectorOp                                                                                        *   VisualShaderNodeTextureParameterTriplanar    
      
   Roughness          VisualShaderNodeMix                                                  �?  �?  �?  �?            ?   ?   ?   ?                  VisualShaderNodeFloatConstant    	      ��L?         VisualShaderNodeFresnel                                     A         VisualShaderNodeFloatOp                                       ?                  VisualShaderNodeColorConstant    	      ��/?b��>33�5  �?         VisualShaderNodeVectorOp                                                                                           VisualShaderNodeFloatConstant    	         @         VisualShaderNodeFloatOp             VisualShaderNodeSmoothStep                    )   �Zd;�?      )   ffffff@      )   �Zd;��         VisualShaderNodeMix                                                  �?  �?  �?  �?            ?   ?   ?   ?                  VisualShaderNodeClamp                                                                           �?  �?  �?  �?                  VisualShaderNodeColorConstant    	      �B?�}x?  �?  �?         VisualShaderNodeFloatOp                      VisualShader D           shader_type spatial;
uniform sampler2D Albedo;
uniform sampler2D Roughness;


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
// ColorConstant:17
	vec4 n_out17p0 = vec4(0.583981, 0.009958, 0.000000, 1.000000);


// ColorConstant:16
	vec4 n_out16p0 = vec4(0.693297, 0.502343, 0.279486, 1.000000);


// Input:7
	mat4 n_out7p0 = INV_VIEW_MATRIX;


// Input:9
	vec3 n_out9p0 = VERTEX;


// TransformVectorMult:11
	vec3 n_out11p0 = (n_out7p0 * vec4(n_out9p0, 1.0)).xyz;


// VectorDecompose:12
	float n_out12p0 = n_out11p0.x;
	float n_out12p1 = n_out11p0.y;
	float n_out12p2 = n_out11p0.z;


// FloatConstant:14
	float n_out14p0 = 3.000000;


// FloatOp:13
	float n_out13p0 = n_out12p1 + n_out14p0;


// SmoothStep:32
	float n_in32p0 = 0.79800;
	float n_in32p1 = 0.92600;
	float n_out32p0 = smoothstep(n_in32p0, n_in32p1, n_out13p0);


// Mix:15
	vec4 n_out15p0 = mix(n_out17p0, n_out16p0, vec4(n_out32p0));


// Clamp:26
	vec4 n_in26p1 = vec4(0.00000, 0.00000, 0.00000, 0.00000);
	vec4 n_in26p2 = vec4(1.00000, 1.00000, 1.00000, 1.00000);
	vec4 n_out26p0 = clamp(n_out15p0, n_in26p1, n_in26p2);


// TextureUniformTriplanar:33
	vec4 n_out33p0 = triplanar_texture(Albedo, triplanar_power_normal, triplanar_pos);


// ColorConstant:21
	vec4 n_out21p0 = vec4(0.374492, 0.380853, 0.000000, 1.000000);


// VectorOp:34
	vec4 n_out34p0 = n_out33p0 * n_out21p0;


// FloatConstant:18
	float n_out18p0 = 4.000000;


// FloatOp:19
	float n_out19p0 = n_out12p1 + n_out18p0;


// SmoothStep:31
	float n_in31p0 = 1.82700;
	float n_in31p1 = 2.20000;
	float n_out31p0 = smoothstep(n_in31p0, n_in31p1, n_out19p0);


// Mix:20
	vec4 n_out20p0 = mix(n_out26p0, n_out34p0, vec4(n_out31p0));


// Clamp:47
	vec4 n_in47p1 = vec4(0.00000, 0.00000, 0.00000, 0.00000);
	vec4 n_in47p2 = vec4(1.00000, 1.00000, 1.00000, 1.00000);
	vec4 n_out47p0 = clamp(n_out20p0, n_in47p1, n_in47p2);


// ColorConstant:48
	vec4 n_out48p0 = vec4(0.757991, 0.970666, 1.000000, 1.000000);


// FloatConstant:37
	float n_out37p0 = 0.800000;


// TextureUniformTriplanar:35
	vec4 n_out35p0 = triplanar_texture(Roughness, triplanar_power_normal, triplanar_pos);


// Mix:36
	vec4 n_out36p0 = mix(vec4(n_out37p0), n_out35p0, vec4(n_out31p0));


// FloatConstant:43
	float n_out43p0 = 2.000000;


// FloatOp:44
	float n_out44p0 = n_out12p1 + n_out43p0;


// FloatOp:49
	float n_out49p0 = n_out36p0.x * n_out44p0;


// SmoothStep:45
	float n_in45p0 = 1.82700;
	float n_in45p1 = 2.80000;
	float n_out45p0 = smoothstep(n_in45p0, n_in45p1, n_out49p0);


// Mix:46
	vec4 n_out46p0 = mix(n_out47p0, n_out48p0, vec4(n_out45p0));


// ColorConstant:41
	vec4 n_out41p0 = vec4(0.685848, 0.462802, 0.000001, 1.000000);


// Fresnel:38
	float n_in38p3 = 9.00000;
	float n_out38p0 = pow(1.0 - clamp(dot(NORMAL, VIEW), 0.0, 1.0), n_in38p3);


// FloatOp:39
	float n_in39p1 = 0.50000;
	float n_out39p0 = n_out38p0 * n_in39p1;


// VectorOp:42
	vec4 n_out42p0 = n_out41p0 * vec4(n_out39p0);


// Output:0
	ALBEDO = vec3(n_out46p0.xyz);
	ROUGHNESS = n_out36p0.x;
	EMISSION = vec3(n_out42p0.xyz);


}
    
   ���$���*             +   
    �U�  HC,            -   
    �T�  �C.            /   
    @?�  �C0            1   
     /�  �C2            3   
    @�  pC4            5   
    @+�  �C6            7   
    @�  p�8            9   
     �  p�:            ;   
    ��  4�<         	   =   
     �  �C>         
   ?   
    @�  �C@            A   
    ���  CB            C   
     ��  ��D            E   
    ���  �BF            G   
    ���  �CH            I   
     �   CJ            K   
     ��  ��L            M   
    ���  �N            O   
    @&�  DP            Q   
    ���  �CR            S   
     ��  DT            U   
     k� ��DV            W   
     �  �DX            Y   
     *�  �DZ            [   
     ��  �D\            ]   
     ��  /D^            _   
    ���  D`            a   
     ��  Db            c   
     z�  4Cd            e   
    ���  �Cf            g   
    ���  �Bh            i   
    ���  Dj       �                 	                                                                                                                                                                              !       "              "                    "                    $      $              #       $      %       $       &       '       )       *       '       *      *              +       ,            ,              /       /       .       -       .      0       .      $       1       ,       1      1       -      .                     RSRC