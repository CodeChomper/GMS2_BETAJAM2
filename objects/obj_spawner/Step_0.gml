/// @description spawn things
if(spawnPause <= 0){
	var type = noone;
	var randy = irandom_range(1,5);
	switch(randy){
		case 1:
		type = obj_badGuy;
		break;
		case 3:
		case 4:
		type = obj_piece;
		break;
		case 5:
		type = obj_potion;
		break;
		default:
		type = obj_piece;
		break;
	}
	var obj = instance_create_layer(random_range(32,room_width - 32),0,"things",type);
	obj.ySpd = 3;
	spawnPause = random_range(10,60);
} else {
	spawnPause--;
}