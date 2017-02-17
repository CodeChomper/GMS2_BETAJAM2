/// @description Player State Machine
if(x < 0 || x > room_width || y < 0 || y > room_height) state="dead";
switch(state){
	case "idle":
		scr_playerIdle();
		break;
	case "warping":
		scr_playerWarping();
		break;
	case "falling":
		scr_playerFalling();
		break;
	case "casting":
		scr_playerCasting();
		break;
	case "dead":
		scr_playerDead();
		break;
}