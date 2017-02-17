/// @description Player Idle state

// Check transition to falling
if(!place_meeting(x,y+ySpd,obj_block)){
	state = "falling";
	return;
}

// Check transition to warping
if(mouse_check_button_released(mb_left)){
	state = "warping";
	return;
}

if(curWarpPossible > minWarpDist){
	curWarpPossible--;
}