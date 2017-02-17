/// @description Player Idle state

// Check transition to falling
if(!place_meeting(x,y+ySpd,obj_block)){
	state = "falling";
	return;
}

// Check transition to warping
if(mouse_check_button_released(mb_left) &&
	distance_to_point(mouse_x,mouse_y) > 20 &&
	mouse_x != x){
	state = "warping";
	return;
}

if(curWarpPossible > minWarpDist){
	curWarpPossible--;
}

health -= 0.1;

if(health <= 0) state = "dead";