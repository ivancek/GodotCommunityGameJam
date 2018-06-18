extends Node


var speed = 300
var context
var direction = Vector2()
var gravity_vector = Vector2()
var aggregate_icon

# Here we set the context on which to operate
func set_context(new_context):
	context = new_context
	context.set_icon(aggregate_icon)

# process_input is called by player (in his _process() function).
# It handles the input and applies gravity and movement.
# This should really be empty, and each state should implement it's own
# behaviour, but since all 3 states we have are so similar in movement
# I decided to place everything in the base class.
func process_input(delta):
	if Input.is_action_pressed("ui_left"):
		direction = Vector2(-1, 0)
	elif Input.is_action_pressed("ui_right"):
		direction = Vector2(1, 0)
	else:
		direction = Vector2()
	
	context.move_and_slide(gravity_vector + direction * speed, Vector2(0, -1))
	
	if context.is_on_floor():
		gravity_vector = Vector2()