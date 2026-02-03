extends Window

var answer: String = ""

func _ready() -> void:
	$VBoxContainer/Options/Option1.pressed.connect(Answered.bind(1))
	$VBoxContainer/Options/Option2.pressed.connect(Answered.bind(2))
	$VBoxContainer/Options/Option3.pressed.connect(Answered.bind(3))
	$VBoxContainer/Options/Option4.pressed.connect(Answered.bind(4))
	$VBoxContainer/Options/Numerical.text_submitted.connect(NumAnswered)

func SetQuestion(Q: Question) -> void:
	$VBoxContainer/PromptLabel.text = Q.question
	
	answer = Q.answer
	
	if Q.type == "NUMERICAL":
		$VBoxContainer/Options/Numerical.show()
		$VBoxContainer/Options/Option1.hide()
		$VBoxContainer/Options/Option2.hide()
		$VBoxContainer/Options/Option3.hide()
		$VBoxContainer/Options/Option4.hide()
	
	else:
		$VBoxContainer/Options/Numerical.hide()
		var i: int = 1
	
		for option: String in Q.options:
			if option:
				var button: Button  = find_child("Option"+str(i))
				button.text = option
				button.show()
			i+=1
	popup_centered()

func NumAnswered(_discard: String) -> void:
	Answered(5)
	$VBoxContainer/Options/Numerical.text=""

func Answered(id: int) -> void:
	var got: String
	if id < 5:
		got = find_child("Option"+str(id)).text
	else:
		got = find_child("Numerical").text
		
	if got == answer:
		print("YOU WON")
		hide()
		$"..".show()
		get_tree().paused=false
	else:
		print("YOU LOST")
		hide()
		$"..".show()
		$"../LoseScreen".show()
		$"../PlayerRB".hide()
		$"../Gates".hide()
		get_tree().paused=false
