extends Area2D


var direction = Vector2.RIGHT
var speed = 400
var target = null

func _physics_process(delta):
	translate(direction * speed * delta)


func _on_aim_bullet_body_entered(body):
	pass # Replace with function body.


func _on_aiming_area_body_entered(body):
	target = bod

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
