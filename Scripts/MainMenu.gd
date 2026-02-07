extends VBoxContainer

var LevelDict: Dictionary = {
	"Level1":"Nomenclature",
	"Level2":"Fundamentals",
	"Level3":"Properties",
	"Level4":"Specific",
	"Level5":"Steam",
	"Level6":"Thermo",
	"Level7":"Vapour",
	"Level8":"Convert",
	"Level9":"General",
	"Level10":""   
}
var DifficultyMode: int = 0 # 0 = easy, 1 = medium, 2 = hard
var DifficultyData: Dictionary =  {
	0: ["Easy", 100, 0.75, 2],
	1: ["Medium", 150, 0.66, 1.333],
	2: ["Hard", 250, 0.5, 0.8],
}

func _ready() -> void:
	for child: Button in $LevelContainer.get_children():
		child.pressed.connect(LoadLevel.bind(child.name))

	$SettingsContainer/DifficultyBtn.pressed.connect(ChangeDifficultyMode)

func LoadLevel(ButtonPressed: String) -> void:
	Globals.LEVEL_CATEGORY = LevelDict[ButtonPressed]
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("PLAY_HIDDEN"):
		Globals.Q_CHANCE = 0
		get_tree().change_scene_to_file("res://Scenes/main.tscn")
	

func ChangeDifficultyMode() -> void:
	DifficultyMode += 1
	if DifficultyMode == 3:
		DifficultyMode = 0
	
	$SettingsContainer/DifficultyBtn.text = "Difficulty: " + DifficultyData[DifficultyMode][0]
	Globals.GATE_SPEED = DifficultyData[DifficultyMode][1]
	Globals.Q_CHANCE = DifficultyData[DifficultyMode][2]
	Globals.GATE_PUSH_FWD = DifficultyData[DifficultyMode][3]

