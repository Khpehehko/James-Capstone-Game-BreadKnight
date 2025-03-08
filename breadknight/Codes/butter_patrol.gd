extends CharacterBody2D

@onready var target= $"../../Characters/Breadknight"
var speed = 350
var enemy = position
	
func _physics_process(delta):
	var direction = (target.position-position).normalized()
	velocity = direction * speed
	if velocity.x > 0:
		$ButterPatrol.flip_h=true
	elif velocity.x < 0:
		$ButterPatrol.flip_h=false
	move_and_slide()

		
func _on_hit_detector_area_entered(area: Area2D) -> void:
	queue_free()
