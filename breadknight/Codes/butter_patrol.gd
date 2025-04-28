extends CharacterBody2D

@onready var nav: NavigationAgent2D = $NavigationAgent2D
@export var target = CharacterBody2D
var speed = 350
var enemy = position

	
func _ready():
	print(target)
	
func _physics_process(delta):
	var direction = (target.position-position).normalized()
	velocity = direction * speed
	if velocity.x > 0:
		$ButterPatrol.flip_h=true
	elif velocity.x < 0:
		$ButterPatrol.flip_h=false
	move_and_slide()

#func _on_hit_detector_area_entered(area: Area2D):
	#queue_free()

func _on_hit_detector_body_entered(body: Node2D):
	queue_free()
