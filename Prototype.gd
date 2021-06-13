extends Node2D

var Counter = 0;
var weapon_instance = load("res://Weapon.tscn").instance()
onready var WD = preload("res://WeaponScript.gd").new()
onready var functionDictionary = {
	1 : testMacro(WD.weaponData["name"])
}
# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(weapon_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
func _input(event): #trigger when any key is pressed
	if(event is InputEventKey):
		Counter = (Counter%3)+1;
		WD.assign(Counter);
		$Weapon/Icon.texture = load(WD.weaponData["path"])
		functionDictionary[1]

func testMacro(args):
	print(args)
