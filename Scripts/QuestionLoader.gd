extends Node

const QUESTIONS: String = \
"""Nomenclature,what is the symbol of gibbs free energy,MC,~g,G,Eg,G0,~g
Nomenclature,what are the units of Specific Entropy,MC,epsilom,kJ/kgK,W/m^2K,kJ/kgs,kJ/kgK
Fundementals,vtotal = vf + x(vf-vg),Bool,TRUE,FALSE,,,FALSE
Fundementals,? <= 1-T(low)/T(high),MC,COP(R),COP(HP),n(Th),n(c),n(Th)
Properties,what is the molar mass of isobutane (g/mol),NUMERICAL,,,,,58.12
Properties,what is C(p) of R134a at 10 kPa and 303K (J/kgK),NUMERICAL,,,,,9089"""

var ALL: Array[Question]
var ALL_DICT: Dictionary

var tmp: Question

func _ready() -> void:
	# load in the questions	
	for listItem in QUESTIONS.split("\n"):
		var data: PackedStringArray = listItem.split(",")
		tmp = Question.new(data[0], data[1], data[2], data.slice(3,7), data[7])
		
		ALL.append(tmp)	
		if ALL_DICT.has(data[0]):
			ALL_DICT[data[0]].append(tmp)
		else:
			ALL_DICT[data[0]] = [tmp]
		
func GetQuestion(category: String = "") -> Question:
	#var picked: Question
	
	# if cateogry is empty, assign a random question
	if category == "":
		return ALL.pick_random()
	
	# else get the dictionary to find by category
	else:
		return ALL_DICT[category].pick_random()
	
