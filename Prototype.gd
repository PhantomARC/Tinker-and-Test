extends Node2D

var Counter = 0;
var weapon_instance = load("res://Weapon.tscn").instance()
onready var WD = preload("res://WeaponScript.gd").new()
onready var functionDictionary = {
	1 : funcref(get_tree().get_root().get_node("Prototype"),"testMacro"),
	2 : funcref(get_tree().get_root().get_node("Prototype"),"testUpdate")
}
# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(weapon_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
func _input(event): #trigger when any key is pressed
	if event.is_action_pressed("ui_accept"):
		Counter = (Counter%WD.wCt)+1;
		WD.assign(Counter);
		$Weapon/Icon.texture = load(WD.weaponData["path"])
		$Weapon/Icon.scale = Vector2(8, 8)
		functionDictionary[1].call_funcv([WD.weaponData["name"]])
		functionDictionary[2].call_func()

func testMacro(args):
	print(args)

func testUpdate():
	$V/Name.text = $V/Name.name + ": " + WD.weaponData["name"]
	$V/Class.text = $V/Class.name + ": " + WD.weaponData["type"]
	$V/Tier.text = $V/Tier.name + ": " + str(WD.weaponData["tier"])
	$V/Damage.text = $V/Damage.name + ": " + str(WD.weaponData["damage"])
	$V/Range.text = $V/Range.name + ": " + str(WD.weaponData["range"])
	get_node("V/Attack Speed").text = get_node("V/Attack Speed").name + \
			": " + str(WD.weaponData["attackSpeed"])
	$V/Knockback.text = $V/Knockback.name + ": " + str(WD.weaponData["knockback"])
	$V/Particle.text = $V/Particle.name + ": " + WD.weaponData["particle"]
