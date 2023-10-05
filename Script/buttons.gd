extends Node2D

@onready var animation_player = $Paper/AnimationPlayer
@onready var paper = $Paper
@onready var rock = $Rock
@onready var scissors = $Scissors

var entered: bool = false
var test: float = 0.1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func process(_delta):
	hover_over()
	#Input_Move()

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


func _on_paper_rect_mouse_exited():
	animation_player.stop()
	
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
	
#func Input_Move():
	#var start = RockMove
	#var PaperMove = animation_player.play("PaperHover")
	#var RockMove = animation_player.play("RockHover")
	#var ScissorsMove =  animation_player.play("Scissors Hover")
	
	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		#var start = RockMove
		#if start == RockMove && Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			#start = ScissorsMove
		#elif start == RockMove && Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
			#start = PaperMove
		#else: 
			#start = start
