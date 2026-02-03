extends RigidBody2D

@onready var LoseScreen: VBoxContainer = $"../LoseScreen"
@onready var AnimatedSprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var GateHandler: Node2D = $"../Gates"

@export var FORCE_SCALE: float = 600
var SCREEN_SIZE: Vector2

var AnimationReversed: bool = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("JUMP"):
		linear_velocity.y = -FORCE_SCALE
		AnimatedSprite.play("fly")
		AnimationReversed=false
	
func reverseAnimation():
	if AnimationReversed:
		# just stop here
		return
	AnimationReversed=true
	AnimatedSprite.play("fly",1, true)

func _ready() -> void:
	SCREEN_SIZE = DisplayServer.screen_get_size()
	body_entered.connect(_collide)
	AnimatedSprite.animation_finished.connect(reverseAnimation)
	
func _collide(_discard: Variant) -> void:
	set_deferred("freeze", true)
	sleeping=true
	gravity_scale = 0
	global_position.y = SCREEN_SIZE.y * 0.1
	LoseScreen.show()
	hide()
	GateHandler.sleep()

func wakeup() -> void:
	set_deferred("freeze", false)
	sleeping=true
	show()
	GateHandler.wake()
	gravity_scale = 1
	
