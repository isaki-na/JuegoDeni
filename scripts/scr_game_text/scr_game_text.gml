/// @desc Function Description
/// @param {any*} text_id Description
function scr_game_text(_text_id){
	switch(_text_id){
		case "dool":
			scr_text("It still has missing parts")
			scr_text("maybe I should fix it later...")
			break;
		case "mirror":
			scr_text("I don ́t want to look at myself...")
			scr_text("Something feels odd...")
			break;
		case "table":
			scr_text("I should leave a note in case I forget something")
			scr_text("I don ́t think someone will read it...")
			break;
		case "closeddoor":
			scr_text("It's locked.")
			scr_text("Maybe dad doesn't want me in there.")
			break;
		case "rippedphoto":
			scr_text("...")
			scr_text("... Was this photo always like this?")
			break;
		case "photos":
			scr_text("This one's smiling")
			scr_text("...")
			scr_text("and this one isn't.")
			break;
		case "library":
			scr_text("I love reading!")
			scr_text("But lately the stories feels like they ́re not mine...")
			break;
		case "musicbox":
			scr_text("That music box...")
			scr_text("I don ́t know if I like its melody or not.")
			break;
	}
}