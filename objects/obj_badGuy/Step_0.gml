/// @description Dumb Bad guy

// Fall until land on block
if(place_meeting(x,y+ySpd,obj_block)){
	ySpd = 0;
} else {
	ySpd += 0.6;
}

y+= ySpd;

//Check if time is paused
if(obj_gt.timePause){
	image_speed = 0;
}else {
	image_speed = 3;

	// move left and right
	if(place_meeting(x+(xSpd * dir), y-2,obj_block)){
		dir *= -1; //Switch dir
	} else {
		x += (xSpd * dir);
	}
}

if(state == "dead") instance_destroy();