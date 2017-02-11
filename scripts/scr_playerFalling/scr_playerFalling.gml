/// @description Player Falling State

if(place_meeting(x,y+ySpd,obj_block)){
	state = "idle";
	ySpd = 0;
} else {
	ySpd += 0.3;
	y += ySpd;
}