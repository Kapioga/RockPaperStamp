extends Node

signal Rock_signal

@onready var rock_button = $"Rock Button"
var default_size = 0.2
var hover_size = 0.3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_rock_button_mouse_entered():
	rock_button.scale = Vector2(hover_size, hover_size)

func _on_rock_button_mouse_exited():
	rock_button.scale = Vector2(default_size, default_size)

func _on_rock_button_pressed():
	Rock_signal.emit()
	print("Pressed!")
	Gamelogic.rock_signal()
