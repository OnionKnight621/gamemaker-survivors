instance_activate_object(oPause);
instance_activate_object(oGuiController);
instance_activate_object(oTime)

if (!portalActivated && oTime.timerSeconds > 20) {
    portalActivated = true; 
    portalTextTimer = game_get_speed(gamespeed_fps) * 3; 

	instance_create_layer(700, 300, "Instances", oPortalGreen);
}


if (portalTextTimer > 0) {
    portalTextTimer--;
}