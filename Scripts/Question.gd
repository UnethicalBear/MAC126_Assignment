class_name Question

var category: String
var options: PackedStringArray
var answer: String
var question: String

func _init(Category: String, Question: String, Options: PackedStringArray, Answer: String) -> void:
	category=Category
	options=Options
	answer=Answer
