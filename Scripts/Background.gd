extends Node2D

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	$Bg1.position.x -= Globals.GATE_SPEED * delta
	$Bg2.position.x -= Globals.GATE_SPEED * delta
	
	if $Bg1.position.x <= -750:
		$Bg1.position.x = $Bg2.position.x + 1500
	if $Bg2.position.x <= -750:
		$Bg2.position.x = $Bg1.position.x + 1500
		

 
