class_name Question

var category: String
var options: PackedStringArray
var answer: String
var question: String
var type: String

func _init(Category: String, Prompt: String, Type: String, Options: PackedStringArray, Answer: String) -> void:
	category=Category
	options=Options
	answer=Answer
	question=Prompt
	type=Type

func _to_string() -> String:
	return question
