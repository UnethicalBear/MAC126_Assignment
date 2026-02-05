extends VBoxContainer

@onready var reviveBtn = $HBoxContainer/QBtn
@onready var exitBtn = $HBoxContainer/EBtn
@onready var Player: RigidBody2D = $"../PlayerRB"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:	
	position = Vector2(DisplayServer.screen_get_size()/2)-size
	
	exitBtn.pressed.connect(exit)
	reviveBtn.pressed.connect(playAgain)
	
func exit() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func playAgain() -> void:
	get_tree().reload_current_scene()
