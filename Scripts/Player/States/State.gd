extends Node

var context
var direction = Vector2()
var gravity_vector = Vector2()

func set_context(new_context):
	context = new_context

func process_input(delta):
	context.move_and_slide(gravity_vector + direction * 100, Vector2(0, -1))
	
	if context.is_on_floor():
		gravity_vector = Vector2()