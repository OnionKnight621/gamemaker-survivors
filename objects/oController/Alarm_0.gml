with (oEnemyParent) {
	direction = point_direction(x,y, oPlayerGreen.x, oPlayerGreen.y);
	speed = walkSpeed;
	
	if (oPlayerGreen.x > x) {
		image_xscale = 1;
	} else {
		image_xscale = -1;
	}
	
	depth = -y;
	
	if (isInvincible) isInvincible = false;
}

oPlayerGreen.depth = -oPlayerGreen.y;

//loop
alarm[0] = alarmTime;