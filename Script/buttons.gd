extends Control

@onready var animation_player = $Paper/AnimationPlayer
@onready var paper = $Paper
@onready var rock = $Rock
@onready var scissors = $Scissors

var entered: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	paper_hover_over()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#Paper Button
func paper_hover_over():
	_on_texture_rect_mouse_entered()
	_on_texture_rect_mouse_exited()

func _on_texture_rect_mouse_entered():
	animation_player.play("PaperHover")

func _on_texture_rect_mouse_exited():
	animation_player.stop()
	
#Paper Button
func paper_hover_over():
	_on_texture_rect_mouse_exited()

func _on_texture_rect_mouse_entered():
	animation_player.play("PaperHover")

func _on_texture_rect_mouse_exited():
	animation_player.stop()
	
#Rock Button
func Rock_hover_over():
	_on_texture_rect_mouse_entered()
	_on_texture_rect_mouse_exited()

func _on_texture_rect_mouse_entered():
	animation_player.play("RockHover")

func _on_texture_rect_mouse_exited():
	animation_player.stop()
