extends Node2D

@onready var G1: Node2D = $Gate1
@onready var G2: Node2D = $Gate2
@onready var G3: Node2D = $Gate3
@onready var G4: Node2D = $Gate4

@export var GATE_SPEED: float = 100
var _GATE_SPEED: float = GATE_SPEED
var GATE_DELTA: Vector2

var RNG: RandomNumberGenerator = RandomNumberGenerator.new()

func _ready() -> void:
	GATE_DELTA = Vector2(GATE_SPEED, 0)
	
	SetGateY(G1)
	SetGateY(G2)
	SetGateY(G3)
	SetGateY(G4)
	

func _process(delta: float) -> void:
	MoveGate(G1, delta)
	MoveGate(G2, delta)
	MoveGate(G3, delta)
	MoveGate(G4, delta)
	
	CheckWraparound(G1)
	CheckWraparound(G2)
	CheckWraparound(G3)
	CheckWraparound(G4)

func MoveGate(gate: Node2D, delta: float) -> void:
	gate.position -= GATE_DELTA * delta

func CheckWraparound(Gate: Node2D) -> void:
	if Gate.position.x < -35:
		Gate.position.x = 1380
		SetGateY(Gate)
		move_child(Gate, -1)
	
func SetGateY(Gate: Node2D) -> void:
	Gate.position.y = RNG.randf_range(-160, 200)
	
	var q: Area2D = Gate.find_child("Question")
	
	if RNG.randi_range(0,1):
		q.show()
		q.monitorable=true
	else:
		q.hide()
		q.monitorable=false
		
	 
func sleep() -> void:
	GATE_SPEED = 0
	hide()

func wake() -> void:
	GATE_SPEED = _GATE_SPEED
	show()
	
func pushLeft() -> void:
	MoveGate(G1, 2)
	MoveGate(G2, 2)
	MoveGate(G3, 2)
	MoveGate(G4, 2)
