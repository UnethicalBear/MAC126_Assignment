extends LineEdit

func _ready() -> void:
	virtual_keyboard_type = LineEdit.KEYBOARD_TYPE_NUMBER
	text_changed.connect(textChanged)

func textChanged(new_text: String) -> void:
	var filtered: String = ""
	for c in new_text:
		if c in "0123456789" or (c == "." and "." not in filtered):
			filtered += c
	
	if filtered != new_text:
		text = filtered
