extends Node2D

const speed = 800
	
func _process(delta: float):
	position += transform.x * speed * delta
	
func _on_hit_detector_area_entered(_area: Area2D) -> void:
	queue_free()
	
func _on_timer_timeout():
	queue_free()

# Make sure bullet spawn and moves at character's facing direction 
