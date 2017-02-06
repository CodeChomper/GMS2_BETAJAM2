/// @description Use shader to draw cube
shader_set(shd_outline);
shader_set_uniform_f(h_pixelH, pixelH);
shader_set_uniform_f(h_pixelW, pixelW);
shader_set_uniform_f(h_lineWidth, lineWidth);
draw_self();
shader_reset();