/// @description destroy
instance_destroy();
health += 20;
health = health > 100 ? 100 : health;
audio_play_sound(snd_yum,2,false);