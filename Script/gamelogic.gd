extends Node

signal enemy_decision

@onready var enemy_node = get_node("res://Scenes/enemy.tscn")
var en_test = preload("res://Scenes/enemy.gd")
var rock_data = false

func enemy_resolve():
	pass
	
func rock_signal():
	print("Global signal sent!")
	rock_data = true
	print("Data now set to: " + str(rock_data))
	print(enemy_decision)

func scissors_signal():
	pass

func paper_signal():
	pass
	
func null_signal():
	pass
