extends Node

@onready var enemy_node = get_node("res://Scenes/enemy.tscn")

var rock_data = false

func enemy_resolve():
	pass
	
func rock_signal():
	print("Global signal sent!")
	rock_data = true
	print(rock_data)

func scissors_signal():
	pass

func paper_signal():
	pass
	
func null_signal():
	pass
