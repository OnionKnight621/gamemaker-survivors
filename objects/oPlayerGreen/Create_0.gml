moveSpd = 2; // pixels per t?
collectRadius = 65;
dialgonalMoveSpd = moveSpd * 0.707; // who tf needs to do vectors normalization manually ?
xSpd = 0;
ySpd = 0;

spriteWidth = sprite_get_width(sGreenSlime1);

// alarms for events

alarmTimer[0] = 80;
alarmTimer[1] = 150;
alarmTimer[2] = 120;

alarm[0] = alarmTimer[0];
alarm[1] = alarmTimer[1];
alarm[2] = alarmTimer[2];

slot[0] = "slash";
slot[1] = "";
slot[2] = "";

// damage values 
damageSlash = 3;
damageSpear = 1;
damageFireball = 2;

xp = 0;
lvl = 1;
lvlUpCoeff = 5;
xpToLevlUp = 5;