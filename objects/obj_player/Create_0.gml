/// @description Player INIT
state = "falling";
isWarping = false;
isStanding = false;
wpX = -1;
wpY = -1;
riseRun = 0;
warpDir = 0;
warpDist = 0;
warpTimer = 0;
ySpd = 0;
pSurf = noone;
facing = 1;
maxWarpDist = 200;
minWarpDist = 100;
curWarpPossible = maxWarpDist;
startX = x;
startY = y;


pixelH_Handle = shader_get_uniform(shd_warp,"pixelH");
pixelW_Handle = shader_get_uniform(shd_warp,"pixelW");
riseRun_Handle = shader_get_uniform(shd_warp,"riseRun");
dir_Handle = shader_get_uniform(shd_warp,"dir");
warpTimer_Handle = shader_get_uniform(shd_warp,"warpTimer");