extends LineEdit

func _ready() -> void:
	virtual_keyboard_type = LineEdit.KEYBOARD_TYPE_NUMBER
	text_changed.connect(textChanged)

@export var NUMBER_MODE: bool = true

func textChanged(new_text: String) -> void:
	if not NUMBER_MODE:
		return
	
	var filtered: String = ""
	for c in new_text:
		if c in "0123456789" or (c == "." and "." not in filtered) or (c=='-' and '-' not in filtered):
			filtered += c
	
	if filtered != new_text:
		text = filtered
