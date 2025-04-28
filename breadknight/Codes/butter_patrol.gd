extends CharacterBody2D
@export var target = CharacterBody2D
@onready var health = $hitdetector/Healthbar
@onready var PopSFX: AudioStreamPlayer2D = $Pop
@onready var time: Timer = $Timer
var speed = 500
var enemy = position

func _ready():
	print(target)
	
func _physics_process(float):
	if target.health <=0:
		queue_free()
	elif target.health >0:
		var direction = (target.position-position).normalized()
		velocity = direction *speed
		if velocity.x > 0:
			$ButterPatrol.flip_h=true
		elif velocity.x < 0:
			$ButterPatrol.flip_h=false
	move_and_slide()

func _on_hit_detector_body_entered(body: Node2D):
	PopSFX.play()
	time.start()

func _on_timer_timeout() -> void:
	_quit()

func _quit():
		queue_free()
	
