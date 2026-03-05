extends Node

var LEVEL_CATEGORY: String
var Q_CHANCE: float = 0.66
var GATE_SPEED: float = 300
var GATE_PUSH_FWD: float = 2

var MusicMuted: bool = false
var SFXMuted: bool = false

var T: float=0
var R: bool = false

func ShakeUI(obj: Control) -> void:
	var tween: Tween = create_tween()
	
	tween.tween_property(obj, "scale", Vector2(1.2, 1.2), 0.1)
	tween.tween_property(obj, "scale", Vector2(1.0, 1.0), 0.1)
	

func _ready() -> void:
	T=Time.get_unix_time_from_system()
