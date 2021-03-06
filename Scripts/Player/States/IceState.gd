extends "res://Scripts/Player/States/State.gd"

func _init():
	aggregate_icon = load("res://ice.png")

# Ice state. It enables the collision mask on layer 2
# and applies gravity.
func set_context(new_context):
	.set_context(new_context)
	
	# enable collision on bars
	context.set_collision_mask_bit(1, true)


func process_input(delta):
	gravity_vector += Vector2(0.0, 9.81)
	.process_input(delta)