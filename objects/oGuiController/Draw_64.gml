var enemiesInstancesStr = $"enemies: {instance_number(oEnemyParent)}"
draw_text_ext_transformed(
	20, 20, 
	enemiesInstancesStr, 
	0, 500, 2, 2, 0);
	
var lvlString = $"lvl: {oPlayerGreen.lvl}";
var _view_values = room_get_viewport(Room1, 0);
var lvlPositionX = _view_values[3] - (_view_values[3] / 5)
draw_text_ext_transformed(
	lvlPositionX, 
	20, 
	lvlString, 
	0, 500, 2, 2, 0);
	
var xpCurrent = oPlayerGreen.xp;
var xpNext = oPlayerGreen.xpToLevlUp;

var barWidth = _view_values[3] * 0.8;
var barHeight = 10;
var barX = (_view_values[3] - barWidth) / 2;
var barY = _view_values[4] - 50;

draw_set_color(c_black);
draw_rectangle(barX, barY, barX + barWidth, barY + barHeight, false);

// filling
var fillWidth = barWidth * (xpCurrent / xpNext);
draw_set_color(c_blue);
draw_rectangle(barX, barY, barX + fillWidth, barY + barHeight, false);

// border
draw_set_color(c_white);
draw_rectangle(barX, barY, barX + barWidth, barY + barHeight, true);

var xpString = $"{xpCurrent}/{xpNext}";
draw_set_color(c_white);
draw_text(barX + barWidth / 2 - string_width(xpString) / 2, barY - 20, xpString);