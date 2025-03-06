extends CharacterBody2D

@export var speed = 1000
var input_direction = Input.get_vector("Left","Right","Up","Down")

#HP system WIP
#Score system WTP
var score = 0
@export var health: int = 48
var attack_power: int = 3
var damage: int = 1
var text = "Attack:" + str(attack_power)
var roll = randf()
	
func get_input():
	input_direction = Input.get_vector("Left","Right","Up","Down")
	if Input.is_action_pressed("Right"):
		$Baugette.flip_h=true
	if Input.is_action_pressed("Left"):
		$Baugette.flip_h=false
	if Input.is_action_pressed("Up"):
		velocity = input_direction * speed * 0.2
	elif Input.is_action_pressed("Down"):
		velocity = input_direction * speed * 0.2
	else:
		velocity = input_direction * speed * 1.65
		
		
func _physics_process(_delta):
	get_input()
	move_and_slide()
	#if Input.is_action_pressed("Shoot"):
	#	_shoot()
