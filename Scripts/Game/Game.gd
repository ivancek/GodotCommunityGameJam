extends Node2D

# State machine class object references
# We use these to encapsulate player behaviour,
# separate it from the player class itself.
# The state machine will deal with the details.
# See Player.gd -> set_state() and _process() functions
var StateClass = load("res://Scripts/Player/States/State.gd")
var IceStateClass = load("res://Scripts/Player/States/IceState.gd")
var CloudStateClass = load("res://Scripts/Player/States/CloudState.gd")
var WaterStateClass = load("res://Scripts/Player/States/WaterState.gd")


# Connect to UI events and set initial player state.
# Initial state might be defined in a level for example.
# We will keep it simple here.
func _ready():
	$Control/HBoxContainer/ButtonNormal.connect("pressed", self, "on_normal_pressed")
	$Control/HBoxContainer/ButtonHot.connect("pressed", self, "on_hot_pressed")
	$Control/HBoxContainer/ButtonCold.connect("pressed", self, "on_cold_pressed")
	
	$Player.set_state(IceStateClass)


# UI callback functions. They set the appropriate state.
# It is now easy to add new states by duplicating any of 
# the classes below and changing its implementation.
# See player.gd for more.
func on_normal_pressed():
	$Player.set_state(WaterStateClass)


func on_hot_pressed():
	$Player.set_state(CloudStateClass)


func on_cold_pressed():
	$Player.set_state(IceStateClass)