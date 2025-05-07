if instance_place(x, y, obj_Main) && (keyboard_check_pressed(vk_space) && !instance_exists(obj_txtbx)){
	create_textbox(text_id,show_photo)
	destry_event = true;
}
if destry_event && !instance_exists(obj_txtbx) {
    if destroy_timer == 0 {
        audio_play_sound(snd_got_object, 0, false);
        destroy_timer = 5; // wait ~5 frames (~0.08 sec)
    }
}
if destroy_timer > 0 {
    destroy_timer--;
    if destroy_timer <= 0 {
        instance_destroy();
    }
}