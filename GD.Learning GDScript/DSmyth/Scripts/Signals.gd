extends Node

signal  on_leveled_up(msg:String)

var exp := 0

func _ready():
	on_leveled_up.connect(_on_leveled_up)

func _on_timer_timeout():
	exp += 5
	print(exp)
	if exp >= 20:
		exp = 0
		on_leveled_up.emit("TTTT")


func _on_leveled_up(msg):
	print(msg)
