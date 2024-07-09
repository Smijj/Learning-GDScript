extends Node


func _input(event: InputEvent):
	if event.is_action_pressed("my_action"):
		print(Add(3, 4))

func Add(a:float, b:float) -> float:
	return a+b

func RandomNumbers():
	var randomFloat = randf()	#Random float between 0 & 1
	var randomFloatInRange = randf_range(0, 10)		# Random float in range (inclusive)
	var randIntInRange = randi_range(0, 10)			# Random int in range (inclusive)
