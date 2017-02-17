/// @description Player Idle state
warpSndPlayed = false;
if(!audio_is_playing(snd_wub))
audio_play_sound(snd_wub,1,true);

sprite_index = spr_player_idle;
// Check transition to falling
if(!place_meeting(x,y+ySpd,obj_block)){
	state = "falling";
	return;
}

// Check transition to warping
if(mouse_check_button_released(mb_left) &&
	mouse_x != x){
	state = "warping";
	return;
}

if(curWarpPossible > minWarpDist){
	curWarpPossible--;
}

health -= 0.1;

if(health <= 0) state = "dead";