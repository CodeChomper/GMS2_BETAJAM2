/// @description Piece Control

//Fall under gravity
ySpd += 0.01;
if(place_free(x, y + ySpd)){
	y += ySpd;
} else {
	ySpd = 0;
	if(!playedThud){
		audio_play_sound(snd_thud,4,false);
		playedThud = true;
	}
}

if(ySpd > 0){
	var obj = instance_place(x,y + ySpd + 3, obj_life);
	
	if(obj != noone){
		obj.state = "dead";
		if(!audio_is_playing(snd_squash))audio_play_sound(snd_squash,3,false);
	}
}