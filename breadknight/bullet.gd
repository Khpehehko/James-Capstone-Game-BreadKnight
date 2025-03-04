extends CharacterBody2D

@export var speed = 40

var direction : float
var spawnPosition : Vector2
var spawnRotation : float

func _ready(): 
	global_position = spawnPosition
	global_rotation = spawnRotation
	
func _physics_process(_delta):
	velocity = Vector2(0,-speed).rotated(direction)
	move_and_slide()
