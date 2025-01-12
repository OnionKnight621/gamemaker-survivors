function create_upgrade_obj(){
	//oPause.pause = true;
	//keyboard_key_press(vk_escape);
	//instance_activate_object(oUpgrade);
	
	var _vx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);
	var _vy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2);
	
	var a = instance_create_depth(_vx, _vy, -2000, oUpgrade);
	a.destinationY = _vy;
	a.image_alpha = 1;
	a.sprite_index = sSlash;
	
	var b = instance_create_depth(_vx, _vy, -2000, oUpgrade);
	b.destinationY = _vy - 56;
	b.image_alpha = 1;
	b.sprite_index = sFireball;
	
	var c = instance_create_depth(_vx, _vy, -2000, oUpgrade);
	c.destinationY = _vy + 56;
	c.image_alpha = 1;
	c.sprite_index = sSpear;
}