extends Label

var score: int = 0

func incrementScore() -> void:
	score+=1
	Achievements.PostScore(score)
	UpdateScore()

func UpdateScore() -> void:
	text = "Score: " + str(score)

func _ready() -> void:
	UpdateScore()
