extends VBoxContainer

func UpdateAch(aID: int) -> void:
	var progress: float = Achievements.AchievementProgess[aID]
	
	var textObj: RichTextLabel = find_child("A"+str(aID))
	
	if progress > 99.5:
		textObj.text += "[rainbow freq=1.0 sat=0.8 val=0.8 speed=1.0]COMPLETE!"
		
		if aID == 1:
			textObj.text += " (reward unlocked...see the credits menu!)"
		
		textObj.text += "[/rainbow]"
		
		return
		
	var text2add: String = str(Achievements.AchievementProgess[aID]) + "%"
	find_child("A"+str(aID)).text += text2add

func _ready() -> void:
	$Button.pressed.connect(get_tree().change_scene_to_file.bind("res://Scenes/main_menu.tscn"))
	
	UpdateAch(0)
	UpdateAch(1)
	UpdateAch(2)
	UpdateAch(3)
	
	if Globals.R:	
		$Label.text = "Congrats on unlocking all achievements! Send this to Leon to claim your prize: " + str(hash(OS.get_name())) + "_" + str(Time.get_unix_time_from_system()-Globals.T).replace(".","_")
		$Label.show()
		$A0.hide()
		$A1.hide()
		$A2.hide()
		$A3.hide()
	
	if Achievements.AchievementPrompt:
		Achievements.AchievementPrompt = false
