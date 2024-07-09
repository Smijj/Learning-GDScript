extends Node

@export var CharacterToKill : Character

func _ready():
	CharacterToKill.die()
