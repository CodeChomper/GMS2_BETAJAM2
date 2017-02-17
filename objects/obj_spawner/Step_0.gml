/// @description spawn things
if(spawnPause <= 0){
	var obj = instance_create_layer(random_range(32,room_width - 32),0,"things",obj_piece);
	obj.ySpd = 3;
	spawnPause = random_range(10,60);
} else {
	spawnPause--;
}