extends Label

var score: int = 0

func incrementScore() -> void:
	score+=1
	UpdateScore()

func UpdateScore() -> void:
	text = "Score: " + str(score)

func _ready() -> void:
	UpdateScore()
