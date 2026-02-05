extends RigidBody2D

@onready var EndScreen: VBoxContainer = $"../EndScreen"
@onready var AnimatedSprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var GateHandler: Node2D = $"../Gates"
@onready var QWindow: Window = $"../QWindow"

@export var FORCE_SCALE: float = 600
var SCREEN_SIZE: Vector2

var fallTime: float = 0 
const idleFallLimit: float = 0.35

#region GODOT INHERITED
 
func _ready() -> void:
	SCREEN_SIZE = DisplayServer.screen_get_size()
	body_entered.connect(_collide)
	
	$Area2D.area_entered.connect(QuestionPopup)
	
	AnimatedSprite.play("fly")
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("JUMP"):
		linear_velocity.y = - FORCE_SCALE

		if AnimatedSprite.animation != "fly":
			AnimatedSprite.play("fly")


func _physics_process(delta: float) -> void:
	if linear_velocity.y > 0:
		fallTime += delta
	else:
		fallTime = 0.0

	if fallTime >= idleFallLimit:
		AnimatedSprite.play("fall")

#endregion	

#region GAME LOGIC

func _collide(_discard: Variant) -> void:
	$"../Dead".play()
	set_deferred("freeze", true)
	sleeping = true
	gravity_scale = 0
	global_position.y = SCREEN_SIZE.y * 0.1
	EndScreen.show()
	hide()
	$Area2D.set_deferred("monitorable", false)
	$Area2D.monitoring = false
	GateHandler.sleep()

func wakeup() -> void:
	set_deferred("freeze", false)
	sleeping = true
	show()
	GateHandler.wake()
	gravity_scale = 1

func QuestionPopup(area: Area2D) -> void:
	area.hide()
	area.get_parent().get_parent().pushLeft()
	QWindow.SetQuestion(QuestionLoader.GetQuestion(Globals.LEVEL_CATEGORY))
	$"..".hide()
	get_tree().paused = true

#endregion
