// runs every game frame

if (!oPause.pause) {
	var collisions = false;

	//get inps
	var rightKey = keyboard_check(vk_right) or keyboard_check(ord("D"));
	var leftKey = keyboard_check(vk_left) or keyboard_check(ord("A"));
	var upKey = keyboard_check(vk_up) or keyboard_check(ord("W"));
	var downtKey = keyboard_check(vk_down) or keyboard_check(ord("S"));

	// get x and y speeds
	var xDir = (rightKey - leftKey);
	var yDir = (downtKey - upKey);

	var padXDir = gamepad_axis_value(0, gp_axislh);
	var padYDir = gamepad_axis_value(0, gp_axislv);

	if (padXDir != 0 or padYDir != 0) {
		xDir = padXDir;
		yDir = padYDir;
	}

	if (xDir > 0) image_xscale = 1;		
	if (xDir < 0) image_xscale = -1;

	xSpd = xDir * moveSpd;
	ySpd = yDir * moveSpd;

	if (xDir != 0 and yDir != 0) {
		xSpd = xDir * dialgonalMoveSpd;
		ySpd = yDir * dialgonalMoveSpd;
	}
	
	if (x + xSpd <= 0 or x + xSpd >= room_width) xSpd = 0;
	if (y + ySpd <= 0 or y + ySpd >= room_height) ySpd = 0;

	if (collisions) {
		if (place_meeting(x + xSpd, y, oEnemyRed)) xSpd = 0;
		if (place_meeting(x, y + ySpd, oEnemyRed)) ySpd = 0;
	}

	// move player
	x += xSpd;
	y += ySpd;
}