extends KinematicBody2D

export (int) var speed = 50
var player = null
var velocity = Vector2()
var target = null
func _ready():
	player = get_parent().get_node("Player")
func _physics_process(delta):
	var target = player.position
	velocity = (target - position).normalized() * speed
	if (target - position).length() > 5:
		velocity = move_and_slide(velocity)
	print (target)
 
