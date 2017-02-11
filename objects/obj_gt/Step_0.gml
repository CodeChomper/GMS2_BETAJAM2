/// @description Control Time

if(obj_player.warpTimer > 0){
	timePause = false;
} else {
	timePause = true;
}

if(keyboard_check(ord("R"))){ 
	room_restart();
}