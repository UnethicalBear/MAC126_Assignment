extends HBoxContainer

func _ready() -> void:
	if Achievements.AchievementProgess[1]:
		$VBoxContainer/Credits.hide()
		$VBoxContainer/Credits2.show()
		
		$Video.show()
		$LockedMsg.hide()

	$VBoxContainer/QuitBtn.pressed.connect(
		get_tree().change_scene_to_file.bind("res://Scenes/main_menu.tscn")
	)
