xp += other.xpVal;

// DnD formula
// more aggressive scaling (quadratic qrowth?)
/*
var nextLvlExp = power(lvlUpCoeff * lvl, 2) - lvlUpCoeff * lvl;
var xpToLevlUp = (lvl == 1 ? lvlUpCoeff : nextLvlExp );
show_debug_message($"xpToLevlUp: {xpToLevlUp}, nextLvlExp: {nextLvlExp}")
*/

// exponential formula
// med scaling
/*
var nextLvlExp = round(lvlUpCoeff * power(lvl, 1.2));
var xpToLevlUp = (lvl == 1 ? lvlUpCoeff : nextLvlExp );
show_debug_message($"xpToLevlUp: {xpToLevlUp}, nextLvlExp: {nextLvlExp}")
*/

// log formula
// lowest scaling
var nextLvlExp = round(lvlUpCoeff * ln(lvl + 1) * lvl);
xpToLevlUp = (lvl == 1 ? lvlUpCoeff : nextLvlExp );

if (xp >= xpToLevlUp) {
	xp = 0;
	lvl++;
	
	create_upgrade_obj();
}



instance_destroy(other.id);