class_name Character

extends Node

@export var Profession : String
@export var Health : int

var chest := Equipment.new()
var legs := Equipment.new()

func _ready():
	chest.armour = 40
	print(chest.armour)
	print(legs.weight)

func die():
	Health = 0
	print(Profession + " Died")


class Equipment:
	var armour := 10
	var weight := 5
