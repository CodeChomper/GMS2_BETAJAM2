/// @description Player State Machine
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