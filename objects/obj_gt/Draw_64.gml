/// @description DEGUB GUI
draw_set_font(fnt_8Bit);
draw_text(20,20,"Player state: " + obj_player.state);
draw_text(20,40,"Player wpX: " + string(obj_player.wpX));
draw_text(20,60,"Player riseRun: " + string(obj_player.riseRun));
draw_text(20,80,"Player warpDist: " + string(obj_player.warpDist));