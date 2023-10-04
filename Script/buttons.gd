extends Node2D

@onready var animation_player = $Paper/AnimationPlayer
@onready var paper = $Paper
@onready var rock = $Rock
@onready var scissors = $Scissors

var entered: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	hover_over()

#Button Master Controls
func hover_over():
	_on_paper_rect_mouse_entered()
	_on_paper_rect_mouse_exited()
	_on_scissors_rect_mouse_entered()
	_on_scissors_rect_mouse_exited()
	_on_rock_rect_mouse_entered()
	_on_rock_rect_mouse_exited()


 # --------------------------------------------------------
#Paper Button
func _on_paper_rect_mouse_entered():
	animation_player.play("PaperHover")
	entered = true

func _on_paper_rect_mouse_exited():
	animation_player.stop()
	entered = false
	
#Scissors Button
func _on_scissors_rect_mouse_entered():
	animation_player.play("Scissors Hover")

func _on_scissors_rect_mouse_exited():
	animation_player.stop()

#Rock Button
func _on_rock_rect_mouse_entered():
	animation_player.play("RockHover")

func _on_rock_rect_mouse_exited():
	animation_player.stop()
