extends CharacterBody2D

@export var speed = 800

var direction : float
var spawnPosition : Vector2
var spawnRotation : float
var zdex : int

func _ready(): 
	global_position = spawnPosition
	global_rotation = spawnRotation
	z_index = zdex
	
func _physics_process(_delta):
	velocity = Vector2(0,-speed).rotated(direction)
	move_and_slide()
	
func _on_hit_detector_area_entered(_area: Area2D) -> void:
	queue_free() 

func _on_timer_timeout():
	queue_free()

# Make sure bullet spawn and moves at character's facing direction 
