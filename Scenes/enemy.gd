extends Node2D

signal enemy_decision

var en_data = [ "Rock", "Paper", "Scissors"]
var enemy_choice = en_data[randi() % en_data.size()]

func _ready():
	print(enemy_choice)

func _process(delta):
	pass
	
# Sends Enemy choice (randomised)
func enemy_request_send():
	enemy_decision.emit(enemy_choice)

