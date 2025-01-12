function spawn_enemies(){
	// Not optimal spawn sys
	// culling should be better https://gamemaker.io/en/blog/forager-optimization-in-gamemaker

	var spawnBuffer = 128;
	var despawnBuffer = 178;

	var redSpawnChance = 0.5;
	var brownSpawnChance = 0.35;

	//instance_deactivate_all(true);
	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0]);
	var _vw = camera_get_view_width(view_camera[0]);
	var _vh = camera_get_view_height(view_camera[0]);
	instance_activate_region(_vx - spawnBuffer, _vy - spawnBuffer, _vw + spawnBuffer, _vh + spawnBuffer, true);

	instance_deactivate_region(_vx - despawnBuffer, _vy - despawnBuffer, _vw + despawnBuffer, _vh + despawnBuffer, false, true);

	// spawn
	repeat (1) {
		var dir = irandom_range(0, 360);
		var xx = oPlayerGreen.x + lengthdir_x(420, dir)
		var yy = oPlayerGreen.y + lengthdir_y(260, dir)

		if (irandom_range(0,1) <= brownSpawnChance) instance_create_layer(xx, yy, "Instances", oEnemyBrown);
		if (irandom_range(0,1) <= redSpawnChance) instance_create_layer(xx, yy, "Instances", oEnemyRed);
	}
}