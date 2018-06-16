extends "res://Scripts/Player/States/State.gd"

func set_context(new_context):
	.set_context(new_context)
	# change sprite to water
	# disable collision on bars

func process_input(delta):
	print("water state process_input")
	pass
