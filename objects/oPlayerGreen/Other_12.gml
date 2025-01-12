/// @description fireball
var fireball = instance_create_layer(x,y, "Instances", oWeapon_Fireball);
fire_fireball(fireball)

function fire_fireball (fireball) {
	fireball.direction = irandom_range(0,360)
	fireball.image_angle = fireball.direction;
	fireball.speed = 4;
	fireball.friction = 0.005;
}