extends Node

var rock_data = false

func rock_signal():
	print("Global signal sent!")
	rock_data = true
	print(rock_data)
