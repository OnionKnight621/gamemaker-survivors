/// @description collecting

var _list = ds_list_create();
var _num = collision_circle_list(oPlayerGreen.x, oPlayerGreen.y, oPlayerGreen.collectRadius, oExpBallParent, false, true, _list, false)

if (_num > 0) {
	for (var i = 0; i < _num; ++i) {
		_list[| i].canFly = true;
	}
}

ds_list_destroy(_list);

alarm[2] = alarmCollectTime;