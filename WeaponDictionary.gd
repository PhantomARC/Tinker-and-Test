extends Node

#dmg = 1-10; range = 1-4; attack speed 0.0 - 1.0; knockback 0 - 20;

#1: rapier
# 2 dmg, 1 range, 1 attack speed, melee, 
#2: longsword
# 5 dmg, 1 range, 0.4 attack speed, melee
#3: axe
# 8 dmg, 1 range, 0.2 attack speed, melee

var weaponDictName = {
	1 : "rapier",
	2 : "longsword",
	3 : "axe",
}

var weaponDictDamage = {
	1 : 2,
	2 : 5,
	3 : 8,
}

var weaponDictRange = {
	1 : 1,
	2 : 1,
	3 : 1,
}

var weaponDictAttackSpeed = {
	1 : 1.00,
	2 : 0.45,
	3 : 0.25,
}

var weaponDictType = {
	1 : "melee",
	2 : "melee",
	3 : "melee",
}

var weaponDictKnockback = {
	1 : 3,
	2 : 10,
	3 : 16,
}

var weaponDictPath = {
	1 : "res://Icon/Rapier.png",
	2 : "res://Icon/Longsword.png",
	3 : "res://Icon/Axe.png",
}
