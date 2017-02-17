/// @description Player Falling State
sprite_index = spr_player_idle;
if(place_meeting(x,y+ySpd,obj_block)){
	state = "idle";
	ySpd = 0;
} else {
	ySpd += 0.3;
	y += ySpd;
}