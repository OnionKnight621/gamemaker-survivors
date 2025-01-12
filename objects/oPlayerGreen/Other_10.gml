/// @description slash
var slashStartDist = 20;
var scaleCoef = 1.5;

var slash = instance_create_layer(x,y, "Instances", oWeapon_Slash);
slash.image_xscale = image_xscale * scaleCoef;
slash.image_yscale = scaleCoef;

if (image_xscale == 1) {
	slash.addX = (spriteWidth / 2) + slashStartDist;
}
if (image_xscale == -1) {
	slash.addX = (-spriteWidth / 2) - slashStartDist;
}