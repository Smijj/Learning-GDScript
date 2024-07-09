extends Node

signal OnHealthChanged(newHealth)

var Health := 100:
	set(value):
		Health = clamp(value, 0, 100)
		OnHealthChanged.emit(Health)

var Chance := 0.2
var ChancePercent: int:
	get:
		return Chance * 100
	set(value):
		Chance = float(value/100.0)


func _ready():
	OnHealthChanged.connect(_on_health_changed)
	Health = 100
	
	print(ChancePercent)
	ChancePercent = 80
	print(ChancePercent)

func _on_health_changed(newHealth):
	print(newHealth)
