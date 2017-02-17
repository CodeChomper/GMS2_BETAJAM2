/// @description Draw Code
if(isWarping){
	if(surface_exists(pSurf)){
		//set the size of a pixel for shader
		var pWidth = 1.0 / surface_get_width(pSurf);
		var pHeight = 1.0 / surface_get_height(pSurf);

		//set and draw to the surface
		surface_set_target(pSurf);
		draw_clear_alpha(c_white,0);
		image_xscale = facing;
		draw_self();
		surface_reset_target();

		//set the shader and draw the surface
		shader_set(shd_warp);
		shader_set_uniform_f(pixelH_Handle, pWidth);
		shader_set_uniform_f(pixelW_Handle, pHeight);
		shader_set_uniform_f(riseRun_Handle, riseRun);
		shader_set_uniform_f(dir_Handle, warpDir);
		shader_set_uniform_f(warpTimer_Handle, warpTimer);
		draw_surface(pSurf,0,0);
		shader_reset();

	} else {
		pSurf = surface_create(1024,768);
	}
} else {
	draw_self();
}

//draw health bar
draw_set_color(c_lime);
draw_set_alpha(0.5);
draw_rectangle(x-20,y-30,x-20+(health/2), y-40,false);
draw_set_alpha(1);
	