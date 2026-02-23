extends Node

var AchievementProgess: Array[float] = [
	75,	# into each building
	100,  # score of 10 (Jonny Unlock)
	100,  # Flap 250 times
	100   # 20 questions correct
]

var AchievementPrompt: bool = false

var BuildingCrashedInto: Array[String] = ["Gate_2A","Gate_2B","Gate_3A","Gate_3B","Gate_4A","Gate_4B"]

func CrashedInto(BuildingName: String) -> void:
	if BuildingName not in BuildingCrashedInto:
		BuildingCrashedInto.append(BuildingName)
		AchievementProgess[0] += 12.5
		
		if AchievementProgess[0] >= 0.95: # new one unlcoked!
			AchievementPrompt = true
	CheckForAll()

func FlapCounterUp() -> void:
	if AchievementProgess[2] < 1:
		AchievementProgess[2] += 0.4
		 
		if AchievementProgess[2] >= 0.95: # new one unlcoked!
			AchievementPrompt = true
	
	AchievementProgess[2] = clampf(AchievementProgess[2] + 0.4, 0, 1)	
	
	CheckForAll()

func PostScore(score: int) -> void:
	if AchievementProgess[1] >= 99:
		return 
		
	if score >= 10:
		AchievementProgess[1] = 100
		
		if AchievementProgess[1] >= 0.95: # new one unlcoked!
			AchievementPrompt = true
	else:
		AchievementProgess[1] = 10 * score
	CheckForAll()

func CorrectQuestion() -> void:
	if AchievementProgess[3] < 1:
		AchievementProgess[3] += 5
		
		if AchievementProgess[3] > 1:
			AchievementProgess[3] = 1
	
		if AchievementProgess[3] >= 99.5:
			AchievementPrompt = true
		
	CheckForAll()

func _check(item:float) -> bool:
	return item >= 99.5

func CheckForAll() -> void:
	if AchievementProgess.all(_check):
		Globals.R=true
