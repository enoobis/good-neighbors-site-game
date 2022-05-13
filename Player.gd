extends KinematicBody2D 

export var speed = 5
export (PackedScene) var Bullet

var Velocity = Vector2.ZERO

func get_input():
	if Input.is_action_just_pressed("shoot"):
		shoot()



func _physics_process(delta): 
	if Input.is_action_pressed("ui_right"): 
		Velocity.x = speed
	elif Input.is_action_pressed("ui_left"): 
		Velocity.x = -speed
	else:
		Velocity.x = 0
	if Input.is_action_pressed("ui_down"):
		Velocity.y = speed
	elif Input.is_action_pressed("ui_up"):
		Velocity.y = -speed
	else:
		Velocity.y = 0
	look_at(get_global_mouse_position())
	get_input()
	move_and_slide(Velocity)

func shoot():
	var b = Bullet.instance()
	owner.add_child(b)
	b.transform = $Muzzle.global_transform
	


