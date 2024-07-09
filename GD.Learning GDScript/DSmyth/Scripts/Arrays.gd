extends Node

@export var m_Items: Array[String] = ["Potion", "Feather", "Pixie"]
@export var m_Dict = {
	"Key": 1,
	"John": 2,
	"Test": {"Level": 10, "Health": 100}
}

enum {POWER, COURAGE}
var CharacterTrait = POWER

enum Alignment {ALLY, NEUTRAL, ENEMY}
@export var CharacterAlignment: Alignment = Alignment.ALLY

func _ready():
	print(m_Items[2])
	
	m_Items[1] = "Shoe"
	print(m_Items)
	
	m_Items.remove_at(2)
	print(m_Items)
	
	m_Items.append("Nice Flower")
	print(m_Items)
	
	PrintAllItemsInArray(m_Items)
	PrintSomeItemsInArray(m_Items, 1)

func PrintAllItemsInArray(array:Array):
	for item in array:
		print(item)
		
func PrintSomeItemsInArray(array:Array, loopIterations:int):
	for i in loopIterations:
		if i >= array.size():
			break
		print(array[i])

func MatchStatement():
	match CharacterAlignment:
		Alignment.ALLY:
			print("Ally")
		Alignment.NEUTRAL:
			print("Neutral")
		Alignment.ENEMY:
			print("Enemy")
		_:
			print("Default")
