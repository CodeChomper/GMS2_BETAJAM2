/// @description spawn things
if(spawnPause <= 0){
	var type = random_range(1,2) > 1.5  ? obj_badGuy : obj_piece;
	var obj = instance_create_layer(random_range(32,room_width - 32),0,"things",type);
	obj.ySpd = 3;
	spawnPause = random_range(10,60);
} else {
	spawnPause--;
}