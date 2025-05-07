right_key = keyboard_check(vk_right)
left_key = keyboard_check(vk_left)
up_key = keyboard_check(vk_up)
down_key = keyboard_check(vk_down)

xspd = (right_key - left_key) * mov_Speed;
yspd = (down_key - up_key) * mov_Speed;


//pause
if instance_exists(obj_pause){
	xspd = 0;
	yspd = 0;
}
//audio
if (xspd != 0 || yspd != 0) {
    if (!audio_is_playing(snd_steps) && !audio_is_playing(snd_carpet) && !instance_place(x, y, obj_carpet)) {
        audio_stop_sound(snd_carpet)
		audio_play_sound(snd_steps, 0, false, 1,0,random_range(0.8,1.2) );
    } 
	else if (!audio_is_playing(snd_carpet) && !audio_is_playing(snd_steps) && instance_place(x, y, obj_carpet)){
		audio_stop_sound(snd_steps)
		audio_play_sound(snd_carpet, 0, false, 1,0,random_range(0.8,1.2) );
	}
} else {
    // Stop the sound when not moving
	if (audio_is_playing(snd_steps)){
		audio_stop_sound(snd_steps)
	}
    if (audio_is_playing(snd_carpet)){
		audio_stop_sound(snd_carpet)
		
	}
}

//sprite change
mask_index = sprite[DOWN]
if yspd == 0{
	if xspd > 0 {face = RIGHT}
	if xspd < 0 {face = LEFT}
}
if xspd > 0 && face == LEFT {face = RIGHT}
if xspd < 0 && face == RIGHT {face = LEFT}

if xspd == 0{
	if yspd > 0 {face = DOWN}
	if yspd < 0 {face = UP}
}
if yspd > 0 && face == UP {face = DOWN}
if yspd < 0 && face == DOWN {face = UP}
sprite_index = sprite[face]

//collisions
if place_meeting(x + xspd, y, obj_wall) || place_meeting(x, y + yspd, obj_photo) {
	xspd = 0
}
if place_meeting(x, y + yspd, obj_wall) || place_meeting(x, y + yspd, obj_photo){
	yspd = 0
}

//movement
x += xspd;
y += yspd;

//animationstop
if xspd == 0 && yspd == 0 {
	image_index = 0
}