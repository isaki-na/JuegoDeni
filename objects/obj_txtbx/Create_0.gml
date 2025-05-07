depth = -9999

//textbox parameters
textbox_width = 316;
textboc_height = 64;
border = 10;
line_sep = 20;
line_width = textbox_width - border*2;
textb_spr = spr_textbox
textb_image = 0
textb_image_spd = 6/60
//text
page = 0;
page_number = 0;
text[0] = "";
text_lenght[0] = string_length(text[0])
char[0,0] = ""
char_x[0,0] = 0
char_y[0,0] = 0
draw_char = 0
text_speed = 1
text_x_offset[0] = 1
accept_key = vk_space;
destroyer = false;
show_photo = false;
//options
option[0] = ""
option_link_id[0] = -1
option_pos = 0
option_number = 0
setup = false

//effects
scr_set_defaults_for_text()
last_free_space = 0