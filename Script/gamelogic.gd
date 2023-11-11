extends Node

var rock_data = false

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
