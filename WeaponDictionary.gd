extends Node

#dmg = 1-10; range = 1-4; attack speed 0.0 - 1.0; knockback 0 - 20;

#1: rapier
# 2 dmg, 1 range, 1 attack speed, melee, 
#2: longsword
# 5 dmg, 1 range, 0.4 attack speed, melee
#3: axe
# 8 dmg, 1 range, 0.2 attack speed, melee

var weaponDictName = {
	1 : "Rapier",
	2 : "Longsword",
	3 : "Axe",
	4 : "Lance",
	5 : "Dagger",
	6 : "Hammer",
	7 : "Scythe",
	8 : "Grapple",
	9 : "Vaulter",
	10 : "Ejector",
	11 : "Impactor",
	12 : "Strafer",
	13 : "Darts",
	14 : "Spewer",
	15 : "Sniper",
	16 : "Boomerang",
	17 : "Mines",
	18 : "Proxy",
	19 : "Lines",
	20 : "Summon",
	21 : "Zone",
	22 : "Turret",
}

var weaponDictDamage = {
	1 : 2, 2 : 5, 3 : 8, 4 : 6,
	5 : 3, 6 : 8, 7 : 3, 8 : 1,
	9 : 2, 10 : 5, 11 : 10, 12 : 1,
	13 : 2, 14 : 1, 15 : 8, 16 : 5,
	17 : 8, 18 : 4, 19 : 2, 20 : 4,
	21: 4, 22 : 3,
}

var weaponDictRange = {
	1 : 1, 2 : 1, 3 : 1, 4 : 2,
	5 : 0, 6 : 1, 7 : 1, 8 : 2,
	9 : 1, 10 : 3, 11 : 3, 12 : 3,
	13 : 3, 14 : 2, 15 : 4, 16 : 3,
	17 : 1, 18 : 2, 19 : 4, 20 : 2, 
	21 : 1, 22 : 3,
}

var weaponDictAttackSpeed = {
	1 : 0.80, 2 : 0.45, 3 : 0.25, 4 : 0.10,
	5 : 0.80, 6 : 0.10, 7 : 0.40, 8 : 0.60,
	9 : 0.50, 10 : 0.10, 11 : 0.05, 12 : 1.00,
	13 : 0.70, 14 : 0.90, 15 : 0.15, 16 : 0.50,
	17 : 0.00, 18 : 0.00, 19 : 0.50, 20 : 0.30,
	21 : 0.60, 22 : 0.50,
}

var weaponDictType = {
	1 : "melee", 2 : "melee", 3 : "melee", 4 : "melee",
	5 : "melee", 6 : "melee", 7 : "melee", 8 : "melee",
	9 : "melee", 10 : "ranged", 11 : "ranged", 12 : "ranged",
	13 : "ranged", 14 : "ranged", 15 : "ranged", 16 : "ranged",
	17 : "trap", 18 : "trap", 19 : "trap", 20 : "trap", 
	21 : "trap", 22 : "trap", 
}

var weaponDictKnockback = {
	1 : 3, 2 : 10, 3 : 16, 4 : 5,
	5 : 2, 6 : 20, 7 : -5, 8 : -15,
	9 : 3, 10 : 8, 11 : 20, 12 : 0, 
	13 : 3, 14 : 3, 15 : 15, 16 : 10,
	17 : 16, 18 : 4, 19 : 20, 20 : 0,
	21 : 10, 22 : 0,
}

var weaponDictPath = {
	1 : "res://Icon/Rapier.png",
	2 : "res://Icon/Longsword.png",
	3 : "res://Icon/Axe.png",
	4 : "res://Icon/Lance.png",
	5 : "res://Icon/Dagger.png",
	6 : "res://Icon/Hammer.png",
	7 : "res://Icon/Scythe.png",
	8 : "res://Icon/Grapple.png",
	9 : "res://Icon/Vaulter.png",
	10 : "res://Icon/Ejector.png",
	11 : "res://Icon/Impactor.png",
	12 : "res://Icon/Strafer.png",
	13 : "res://Icon/Darts.png",
	14 : "res://Icon/Spewer.png",
	15 : "res://Icon/Sniper.png",
	16 : "res://Icon/Boomerang.png",
	17 : "res://Icon/Mines.png",
	18 : "res://Icon/Proxy.png",
	19 : "res://Icon/Lines.png",
	20 : "res://Icon/Summon.png",
	21 : "res://Icon/Zone.png",
	22 : "res://Icon/Turret.png",
}

var weaponCount = 22

var partDictData = {
	#Name, path
	1 : ["boomerang", "res://Icon/Particles/boomerang.png"],
	2 : ["bullet", "res://Icon/Particles/bullet.png"],
	3 : ["cross", "res://Icon/Particles/cross.png"],
	4 : ["line", "res://Icon/Particles/line.png"],
	5 : ["pellet", "res://Icon/Particles/pellet.png"],
	6 : ["poke", "res://Icon/Particles/poke.png"],
	7 : ["rocket", "res://Icon/Particles/rocket.png"],
	8 : ["slam", "res://Icon/Particles/slam.png"],
	9 : ["slash", "res://Icon/Particles/slash.png"],
	10 : ["zone", "res://Icon/Particles/zone.png"],
}
