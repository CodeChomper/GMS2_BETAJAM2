/// @description Fall Under Gravity
if(place_free(x,y + ySpd)){
	y += ySpd;
	ySpd += 0.05
} else {
	ySpd = 0;
}

if(state == "dead") instance_destroy();