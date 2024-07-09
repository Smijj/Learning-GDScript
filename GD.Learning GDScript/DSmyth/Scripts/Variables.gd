extends Node

@export var m_Health: float = 100	# Strongly typed, @export makes var available in the inspector

var m_Dynamic = "String"	# Type is Dynamic
var m_InferedType := 1 		# Strongly typed to a int based on the default value

const GRAVITY := -9.81		# Constants cant be changed

func _input(event):
	if event.is_action_pressed("my_action"):
		if m_Health > 0: 
			m_Health -= 20
		print(m_Health)
		
		if m_Health <= 0:
			m_Health = 0
			print("You Died!")
		elif m_Health < 50:
			print("You are Injured!")
		else:
			print("You are Healthy!")
