extends "res://Scripts/Player/States/State.gd"


func _init():
	aggregate_icon = load("res://water.png")

# Water state. It disables the collision mask on layer 2
# and applies gravity.
func set_context(new_context):
	.set_context(new_context)
	
	# disable collision on bars
	context.set_collision_mask_bit(1, false)


func process_input(delta):
	gravity_vector += Vector2(0.0, 9.81)
	.process_input(delta)