// disable alpha blend (we just need RGB from screen)
gpu_set_blendenable(false);

if (pause) {
	surface_set_target(application_surface);
	
	if (surface_exists(pauseSurf)) draw_surface(pauseSurf, 0, 0);
	else {
		pauseSurf = surface_create(resW, resH);
		buffer_set_surface(pauseSurfBuffer, pauseSurf, 0);
	}
	
	surface_reset_target();
}

var pauseKey = keyboard_check(vk_escape);

if (pauseKey && !pauseKeyPrev) {
	if (!pause) {
		pause = true;
		
		//deactivate everything other then that instance
		instance_deactivate_all(true);
		instance_activate_object(oPlayerGreen)
		instance_activate_object(oGuiController)
		
		// if sprites animations need to be deactivated
		// it should be done separately -_-
		
		// capture game moment (wont capture draw gui though)
		pauseSurf = surface_create(resW, resH);
		
		surface_set_target(pauseSurf);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
		
		// back up this surface in buffin case we lost it
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	} else {
		// unpause
		pause = false;
		instance_activate_all();
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
}

//enable alfa blending again
gpu_set_blendenable(true);

pauseKeyPrev = pauseKey;