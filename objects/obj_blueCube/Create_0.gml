/// @description Setup
h_pixelH = shader_get_uniform(shd_outline,"pixelH");
h_pixelW = shader_get_uniform(shd_outline,"pixelW");
h_lineWidth = shader_get_uniform(shd_outline, "lineWidth");

pixelH = 1.0 / sprite_height;
pixelW = 1.0 / sprite_width;
lineWidth = 2.0;