var _view_values = room_get_viewport(Room1, 0);

if (portalTextTimer > 0) {
    var text = "Portal Activated!";
    var text_x = (_view_values[3] - string_width(text)) / 2; 
    var text_y = _view_values[4] / 4; 

    draw_set_color(c_white);
	draw_text_ext_transformed(
	text_x, 
	text_y, 
	text, 
	0, 500, 2, 2, 0);
}