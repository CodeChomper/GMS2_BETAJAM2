/// @drescription Player Warping State

//Start of warping state

if(!isWarping){
	isWarping = true;
	y--;
	//set base point
	var bpX = x;
	var bpY = y
	
	//get mouse point
	wpX = mouse_x;
	wpY = mouse_y;
	
	facing = wpX < bpX ? -1 : 1;
		
	//get warpDir left = -1    right = 1
	warpDir = x < wpX ? 1 : -1;
	
	//get angle to warp point
	riseRun = ((wpY - y) / (wpX - x)) * warpDir;
	//travel along warp angle until hit obj_block, set warp point
	while(distance_to_point(wpX,wpY) > 1 &&	place_free(x+warpDir,y+riseRun)){
		x+=warpDir;
		y+=riseRun;	
	}
	
	//warp dist calc distance
	warpDist = distance_to_point(bpX,bpY);
	//set warp timer based on warp dist
	warpTimer = warpDist div 5;

	
}

if(warpTimer <= 0){
	state = "falling";
	isWarping = false;
	return;
} else {
	warpTimer --;
}

