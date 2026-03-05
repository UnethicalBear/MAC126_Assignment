extends Node

var AchievementProgess: Array[float] = [
	0,	# into each building
	0,  # score of 10 (Jonny Unlock)
	0,  # Flap 250 times
	0   # 20 questions correct
]

var AchievementPrompt: bool = false

var BuildingCrashedInto: Array[String] = []

func CrashedInto(BuildingName: String) -> void:
	if BuildingName not in BuildingCrashedInto:
		BuildingCrashedInto.append(BuildingName)
		AchievementProgess[0] += 12.5
		
		if check(AchievementProgess[0]): # new one unlcoked!
			AchievementPrompt = true
	CheckForAll()

func FlapCounterUp() -> void:
	if AchievementProgess[2] < 100:
		AchievementProgess[2] += 0.4
		 
		if check(AchievementProgess[2]): # new one unlcoked!
			AchievementPrompt = true
	
	AchievementProgess[2] = clampf(AchievementProgess[2] + 0.4, 0, 100)	

	CheckForAll()

func PostScore(score: int) -> void:
	if AchievementProgess[1] >= 99:
		return 
		
	if score >= 10:
		AchievementProgess[1] = 100
		
		if check(AchievementProgess[1]): # new one unlcoked!
			AchievementPrompt = true
	else:
		AchievementProgess[1] = 10 * score
	CheckForAll()

func CorrectQuestion() -> void:
	if AchievementProgess[3] < 100:
		AchievementProgess[3] += 5
		
		if AchievementProgess[3] > 100:
			AchievementProgess[3] = 1
	
		if check(AchievementProgess[3]):
			AchievementPrompt = true
		
	CheckForAll()

func check(item:float) -> bool:
	return item >= 99.5

func CheckForAll() -> void:
	if AchievementProgess.all(check):
		Globals.R=true
