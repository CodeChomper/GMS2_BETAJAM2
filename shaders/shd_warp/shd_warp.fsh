//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pixelH;
uniform float pixelW;
uniform float riseRun;
uniform float dir;
uniform float warpTimer;


void main()
{
	vec2 offsetx;
	offsetx.x = pixelW;
	vec2 offsety;
	offsety.y = pixelH;
	
	float aMulti = warpTimer * pixelW;
	
	gl_FragColor = texture2D( gm_BaseTexture, v_vTexcoord );
	
	float alpha = gl_FragColor.a;
	
	//Only Draw in blank pixels
	if(alpha == 0.0){
		//get loop amount
		for(float i=0.0; i<50.0; i++){
			vec2 newOffset;
			//move up using riseRun and look for alpha != 0.0
			newOffset.x = i * dir * offsetx.x;
			newOffset.y = i * riseRun * offsety.y;
			if(texture2D(gm_BaseTexture, v_vTexcoord + newOffset).a > 0.0){
				gl_FragColor = texture2D(gm_BaseTexture, v_vTexcoord + newOffset);
				gl_FragColor.a = (1.0 - i * 0.01) * (aMulti * 4.0);
			}	
		}
	}
}
