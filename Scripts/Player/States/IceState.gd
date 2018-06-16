extends "res://Scripts/Player/States/State.gd"



func set_context(new_context):
	.set_context(new_context)
	# change sprite to ice
	# change collision mask setting
	context.set_collision_mask_bit(1, true)	

func process_input(delta):
	if Input.is_action_pressed("ui_left"):
		direction = Vector2(-1, 0)
	elif Input.is_action_pressed("ui_right"):
		direction = Vector2(1, 0)
	
	gravity_vector += Vector2(0.0, 9.81)
	
	.process_input(delta)