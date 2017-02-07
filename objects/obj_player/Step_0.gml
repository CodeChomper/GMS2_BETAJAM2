/// @description Player Control

// Fall under gravity
if(position_meeting(x,y+ySpd,obj_block)){
	ySpd = 0;
	if(warpDist == 0){
		obj_gt.timePause = true;
	}
} else {
	ySpd+=0.4;
	obj_gt.timePause = false;
}

y+=ySpd;


// Move to mouse position
if(mouse_check_button_released(mb_left) and obj_gt.timePause ){
	warpDist = distance_to_point(mouse_x,mouse_y) div 2;
	x = mouse_x;
	y = mouse_y;
}

// If Still Warpping
if(warpDist > 0) warpDist--;