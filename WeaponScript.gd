extends Node


var weaponData = {
	"name" : "",
	"tier" : 0,
	"type" : "",
	"path" : "",
	"damage" : 0,
	"range" : 0,
	"attackSpeed" : 0,
	"knockback" : 0,
	"particle" : "", #T1
	"attribute" : "", #T2
	"effect" : "", #T3
	"modifier" : "", #T4
	"status" : "", #T5
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func assign(weaponID:int): #1 params
	weaponData["name"] = WeaponDictionary.weaponDictName[weaponID];
	weaponData["tier"] = 0;
	weaponData["type"] = "";
	weaponData["path"] = WeaponDictionary.weaponDictPath[weaponID];
	weaponData["damage"] = WeaponDictionary.weaponDictDamage[weaponID];
	weaponData["range"] = WeaponDictionary.weaponDictRange[weaponID];
	weaponData["attackSpeed"] = WeaponDictionary.weaponDictAttackSpeed[weaponID];
	weaponData["knockback"] = WeaponDictionary.weaponDictKnockback[weaponID];
	weaponData["particle"] = "";
	weaponData["attribute"] = "";
	weaponData["effect"] = "";
	weaponData["modifier"] = "";
	weaponData["status"] = "";
	
