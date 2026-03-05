extends VBoxContainer

@onready var reviveBtn = $HBoxContainer/QBtn
@onready var exitBtn = $HBoxContainer/EBtn
@onready var Player: RigidBody2D = $"../../PlayerRB"

var DeathTemplate: String = \
""" 
[font_size=64]You Lost!
[font_size=30]"""

var splash_texts: Array[String] = [
	"Cathy and Brant are not impressed.",
	"Stop going to Roar and start going to lectures.",
	"[font_size=24][left]> Plays flappy bird to avoid proper revision\n> Isn't even good at it",
	"Let's hope the exam goes better than this...",
	"[font_size=24]A gentle reminder about the easy mode setting in the main menu :)",
]

func _ready() -> void:	
	#position = Vector2(DisplayServer.screen_get_size())/2-size
	exitBtn.pressed.connect(exit)
	reviveBtn.pressed.connect(playAgain)
	
	$RichTextLabel.text = DeathTemplate+splash_texts.pick_random()
	
func exit() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func playAgain() -> void:
	get_tree().reload_current_scene()
