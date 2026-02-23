extends Node2D

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	$Bg1.position.x -= Globals.GATE_SPEED * delta
	$Bg2.position.x -= Globals.GATE_SPEED * delta
	
	if $Bg1.position.x <= -762:
		$Bg1.position.x = 2250
	if $Bg2.position.x <= -762:
		$Bg2.position.x = 2250
