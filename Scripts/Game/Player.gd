extends Sprite


# We will store the current_state and use it to process input.
# See _process(delta) function
var current_state


# The player is able to have multiple states without
# the need to change player code.
func _process(delta):
	current_state.process_input(delta)


# Changes the state by freeing the current state (if any)
# and creates a new instance of the appropriate class.
# Finally, it sets the player as the context to operate on.
# This function can be used for anything from changing the sprite
# or modifying gameplay properties (gravity etc). 
# See set_context() of any state class for details.
func set_state(StateClass):
	if current_state:
		current_state.queue_free()
	
	current_state = StateClass.new()
	current_state.set_context(self)