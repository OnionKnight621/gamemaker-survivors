/// @description spear
var spear = instance_create_layer(x,y, "Instances", oWeapon_Spear);
spear_spinning(spear);
// spear_throw(spear);

function spear_spinning (spear) {
	spear.direction = irandom_range(45,135)
	spear.speed = 4;
	spear.gravity = 0.1;
	spear.friction = 0.01;
}

function spear_throw (spear) {
	spear.direction = 90;
	spear.speed = 5;
	spear.gravity = 0.002;
	spear.friction = 0.005;
}