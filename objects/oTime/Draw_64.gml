var minutes = floor(timerSeconds / 60);
var seconds = timerSeconds mod 60;

var timeStr = string_format(minutes, 2, 0) + ":" + string_format(seconds, 2, 0);

var _view_values = room_get_viewport(Room1, 0);

var timerPositionX = _view_values[3] - (_view_values[3] / 2)

draw_set_color(c_white);
draw_text_ext_transformed(
	timerPositionX, 
	20, 
	timeStr, 
	0, 500, 2, 2, 0);