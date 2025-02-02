RSRC                     VisualShader            ��������                                            \      resource_local_to_scene    resource_name    output_port_for_preview    default_input_values    expanded_output_ports    input_name    script    noise_type    seed 
   frequency    offset    fractal_type    fractal_octaves    fractal_lacunarity    fractal_gain    fractal_weighted_strength    fractal_ping_pong_strength    cellular_distance_function    cellular_jitter    cellular_return_type    domain_warp_enabled    domain_warp_type    domain_warp_amplitude    domain_warp_frequency    domain_warp_fractal_type    domain_warp_fractal_octaves    domain_warp_fractal_lacunarity    domain_warp_fractal_gain    width    height    invert    in_3d_space    generate_mipmaps 	   seamless    seamless_blend_skirt    as_normal_map    bump_strength    color_ramp    noise    source    texture    texture_type    op_type 	   operator 	   constant    code    graph_offset    mode    nodes/vertex/0/position    nodes/vertex/connections    nodes/fragment/0/position    nodes/fragment/connections    nodes/light/0/position    nodes/light/connections    nodes/start/0/position    nodes/start/connections    nodes/process/0/position    nodes/process/connections    nodes/collide/0/position    nodes/collide/connections    nodes/start_custom/0/position    nodes/start_custom/connections     nodes/process_custom/0/position !   nodes/process_custom/connections    nodes/sky/0/position    nodes/sky/connections    nodes/fog/0/position    nodes/fog/3/node    nodes/fog/3/position    nodes/fog/4/node    nodes/fog/4/position    nodes/fog/5/node    nodes/fog/5/position    nodes/fog/6/node    nodes/fog/6/position    nodes/fog/7/node    nodes/fog/7/position    nodes/fog/8/node    nodes/fog/8/position    nodes/fog/9/node    nodes/fog/9/position    nodes/fog/10/node    nodes/fog/10/position    nodes/fog/11/node    nodes/fog/11/position    nodes/fog/12/node    nodes/fog/12/position    nodes/fog/13/node    nodes/fog/13/position    nodes/fog/14/node    nodes/fog/14/position    nodes/fog/connections        $   local://VisualShaderNodeInput_u1rsh c         local://FastNoiseLite_onu7b �         local://NoiseTexture2D_ukefn       &   local://VisualShaderNodeTexture_v3rx8 A      ,   local://VisualShaderNodeVectorCompose_2qrw0 �      $   local://VisualShaderNodeInput_j7btf �      &   local://VisualShaderNodeFloatOp_qp3sx �      &   local://VisualShaderNodeFloatOp_bdnob &      ,   local://VisualShaderNodeColorConstant_0ji4e N      &   local://VisualShaderNodeFloatOp_cdf5b |      &   local://VisualShaderNodeFloatOp_hvfn2 �      )   local://VisualShaderNodeSmoothStep_504d2 <      $   local://VisualShaderNodeInput_rummm �      &   local://VisualShaderNodeFloatOp_a3r5h           local://VisualShader_mdi7x 4         VisualShaderNodeInput                             world_position          FastNoiseLite             	      o�:        �B        �?                  NoiseTexture2D    &                     VisualShaderNodeTexture                    (                     VisualShaderNodeVectorCompose    *                   VisualShaderNodeInput             time          VisualShaderNodeFloatOp             VisualShaderNodeFloatOp             VisualShaderNodeColorConstant             VisualShaderNodeFloatOp                                      @@+                  VisualShaderNodeFloatOp                                       A+                  VisualShaderNodeSmoothStep                    )   �������?      )   333333�?            ?         VisualShaderNodeInput                             world_position          VisualShaderNodeFloatOp    +                  VisualShader    -      >  shader_type fog;
uniform sampler2D tex_fog_4;



void fog() {
// Input:13
	vec3 n_out13p0 = WORLD_POSITION;
	float n_out13p2 = n_out13p0.g;
	float n_out13p3 = n_out13p0.b;


// VectorCompose:5
	vec2 n_out5p0 = vec2(n_out13p2, n_out13p3);


// Texture2D:4
	vec4 n_out4p0 = texture(tex_fog_4, n_out5p0);
	float n_out4p1 = n_out4p0.r;


// FloatOp:10
	float n_in10p1 = 3.00000;
	float n_out10p0 = pow(n_out4p1, n_in10p1);


// ColorConstant:9
	vec4 n_out9p0 = vec4(1.000000, 1.000000, 1.000000, 1.000000);


// Output:0
	DENSITY = n_out10p0;
	ALBEDO = vec3(n_out9p0.xyz);


}
 /         B   
     CD  \CC             D   
     \�  �CE            F   
     �A  �CG            H   
     H�  �CI            J   
     u�  �CK            L   
     ��  �CM            N   
     ��  �CO            P   
     D  �CQ         	   R   
     �C  �CS         
   T   
   �Z*�#sDU            V   
     �C   CW            X   
     ��  pBY            Z   
      C  �B[       4   	                                                                                                                
       
                                                            RSRC