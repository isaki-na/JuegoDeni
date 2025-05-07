if place_meeting(x, y, obj_Main) && !instance_exists(obj_warp){
	var inst = instance_create_depth(0, 0, -999, obj_warp);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	inst.target_face = target_face;
	audio_play_sound(snd_op_door, 0, false);
	 if destroy_timer == 0 {
        audio_play_sound(snd_door, 0, false);
        destroy_timer = 500;
    }
	if destroy_timer > 0 {
    destroy_timer--;
    if destroy_timer <= 0 {
        instance_destroy();
    }
}
}