extends Node2D

signal enemy_decision
var en_data = [ "Rock", "Paper", "Scissors" ]
var enemy_choice = en_data[randi() % en_data.size()]

# Called when the node enters the scene tree for the first time.
func _ready():
	print(enemy_choice)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

