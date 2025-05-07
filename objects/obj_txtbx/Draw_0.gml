textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 190;
spr_x = camera_get_view_x(view_camera[0]) + 303;
spr_y = camera_get_view_y(view_camera[0]) + 87; 
spr_x2 = camera_get_view_x(view_camera[0]) + 154;
spr_y2 = camera_get_view_y(view_camera[0]) + 21; 

//setup
if setup == false{
	setup = true;
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	
	for(var p = 0; p < page_number; p++){
		text_lenght[p] = string_length(text[p]);
		text_x_offset[p] = 22;

		}
		
}
	

//type text
if draw_char < text_lenght[page]{
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_lenght[page]);
}

//flip through pages
if keyboard_check_pressed(accept_key){
	
	//if typing is done 
	if draw_char == text_lenght[page]{
		//next page
		if page < (page_number-1) {
			page++;
			draw_char = 0;
			audio_play_sound(snd_page, 0, false);
		}
		else{
			
			destroyer = true;
		}
	}
	else{
		draw_char = text_lenght[page];
	}
	
}

//draw txtbx
var _txtbx_x = textbox_x + text_x_offset[page]
var _txtbx_y = textbox_y
textb_image += textb_image_spd;
textb_spr_w = sprite_get_width(textb_spr);
textb_spr_h = sprite_get_height(textb_spr);
draw_sprite_ext(textb_spr, textb_image,_txtbx_x , _txtbx_y, textbox_width/textb_spr_w, textboc_height/textb_spr_h, 0, c_white, 1);
//draw sprites
draw_sprite(spr_charactercloseup, image_index, spr_x, spr_y)
if (show_photo == true){draw_sprite(spr_photo_big, image_index, spr_x2, spr_y2)}
//draw text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(_txtbx_x + border, _txtbx_y + border, _drawtext, line_sep, line_width);

