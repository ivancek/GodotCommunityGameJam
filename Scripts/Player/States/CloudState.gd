extends "res://Scripts/Player/States/State.gd"

func set_context(new_context):
	.set_context(new_context)
	# change sprite to cloud
	# disable gravity

func process_input(delta):
	print("cloud state process_input")
	pass
