extends KinematicBody2D


func _physics_process(delta):
	velocity = velocity.normalized() * speed
	velocity = move_and_slide(velocity)
	velocity.x = 40
	id += 1
	if id > 39:
		queue_free()

export var id = 0
export var speed = 800

var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	position = get_tree().get_root().get_node("Prototype/Weapon").position
	$Icon.texture = load(WeaponDictionary.partDictData[get_tree().get_root().get_node("Prototype").Counter2][1])
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
