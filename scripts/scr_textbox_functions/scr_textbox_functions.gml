/// @param
function scr_set_defaults_for_text(){
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	
	
}
function scr_text(_text, _show_photo){
	scr_set_defaults_for_text();
	text[page_number] = _text;
	page_number++
}

function create_textbox(_text_id, _show_photo){
		with( instance_create_depth(0, 0, -9999, obj_txtbx)){
		scr_game_text(_text_id)
		show_photo = _show_photo
	}
}

