// calc collisions to register hits

var _list = ds_list_create();
var _num = collision_rectangle_list(
	bbox_left, 
	bbox_top, 
	bbox_right, 
	bbox_bottom, 
	oEnemyParent, 
	false, 
	true, 
	_list, 
	false
);
if (_num > 0) {
    for (var i = 0; i < _num; ++i;) {

		if (!_list[| i].isInvincible) {
			 _list[| i].hp -= dmg;
			 
			 //dmg num
			 with instance_create_layer( _list[| i].x,  _list[| i].y-35, "DmgNumbers", oDamageNuberFont) {
				damage = oWeapon_Parent.dmg;
			 }
			 
			 
			 //push
			 var dir = point_direction(x, y, _list[| i].x, _list[| i].y)
			 _list[| i].x = _list[| i].x + lengthdir_x(6, dir);
			 _list[| i].y = _list[| i].y + lengthdir_y(6, dir);
		}		
		
		if (_list[| i].hp <= 0) {
			instance_destroy(_list[| i]);
		}
    }
}
ds_list_destroy(_list);