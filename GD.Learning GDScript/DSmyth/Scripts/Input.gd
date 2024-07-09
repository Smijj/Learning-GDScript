extends Node

@onready var m_Label = $Label

# Called when the node enters the scene tree for the first time.
func _ready():
	m_Label.text = "Hello World"
	m_Label.modulate = Color.PALE_GREEN
	print("Hello world")
	
func _input(event):
	if event.is_action_pressed("my_action"):
		m_Label.modulate = Color.ALICE_BLUE
		
	if event.is_action_released("my_action"):
		m_Label.modulate = Color.PALE_GREEN
