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

func _ready() -> void:
	for child: Button in $LevelContainer.get_children():
		child.pressed.connect(LoadLevel.bind(child.name))

func LoadLevel(ButtonPressed: String) -> void:
	Globals.LEVEL_CATEGORY = LevelDict[ButtonPressed]
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
	
