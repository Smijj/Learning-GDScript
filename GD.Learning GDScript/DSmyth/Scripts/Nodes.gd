extends Node

@onready var playerPathRef = $Player
@export var playerExportRef: Node

@export var explicitRef: Sprite2D

func _ready():
	print(playerExportRef)
	print(playerExportRef.name)
	
	if playerExportRef is Node2D:
		print(playerExportRef.name + " is a Node2D")
