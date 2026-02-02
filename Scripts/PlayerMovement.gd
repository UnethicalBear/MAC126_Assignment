extends RigidBody2D

var FORCE_SCALE: float = 600

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("JUMP"):
		print("hi")
		linear_velocity.y = -FORCE_SCALE
		
