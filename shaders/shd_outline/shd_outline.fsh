//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;
uniform float lineWidth;


void main()
{
	vec2 offsetx;
	offsetx.x = pixelW * lineWidth;
	vec2 offsety;
	offsety.y = pixelH * lineWidth;
	
	gl_FragColor = texture2D( gm_BaseTexture, v_vTexcoord );
	
	float alpha = gl_FragColor.a;
	if(alpha == 0.0){
		float upA = texture2D(gm_BaseTexture, v_vTexcoord - offsety).a;
		float downA = texture2D(gm_BaseTexture, v_vTexcoord + offsety).a;
		float leftA = texture2D(gm_BaseTexture, v_vTexcoord - offsetx).a;
		float rightA = texture2D(gm_BaseTexture, v_vTexcoord + offsetx).a;
		
		if(upA > 0.0 || downA > 0.0 || leftA > 0.0 || rightA > 0.0){
			gl_FragColor = vec4(0.0,0.0,0.0,1.1);
		}
	}
}
