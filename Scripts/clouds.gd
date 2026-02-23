extends Node2D

var rng: RandomNumberGenerator=RandomNumberGenerator.new()

var speed1: float = 1
var speed3: float = 1
var speed4: float = 1

func getNewSpeed(cloud: int) -> void:
	if cloud == 1:
		speed1 = rng.randf_range(1, 1.55)
	elif cloud == 3:
		speed3 = rng.randf_range(1, 1.55)
	elif cloud == 4:
		speed4 = rng.randf_range(1, 1.55)
		
func _ready() -> void:
	getNewSpeed(1)
	getNewSpeed(3)
	getNewSpeed(4)

func _process(delta: float) -> void:
	$Cloud1.position.x -= Globals.GATE_SPEED * delta * speed1
	$Cloud3.position.x -= Globals.GATE_SPEED * delta * speed3
	$Cloud4.position.x -= Globals.GATE_SPEED * delta * speed4
	
	if $Cloud1.position.x <= -132:
		$Cloud1.position.x = 1350
		$Cloud1.position.y = [70, 160, 250, 450].pick_random()
		getNewSpeed(1)

	if $Cloud3.position.x <= -145:
		$Cloud3.position.x = 1350
		$Cloud3.position.y = [70, 160, 250, 450].pick_random()
		getNewSpeed(3)

	if $Cloud4.position.x <= -152:
		$Cloud4.position.x = 1350
		$Cloud4.position.y = [70, 160, 250, 450].pick_random()
		getNewSpeed(4)
