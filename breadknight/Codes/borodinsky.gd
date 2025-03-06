extends CharacterBody2D

const speed = 1000

#HP system WIP
#Score system WIP
var score = 0
@export var health: int = 48
var attack_power: int = 3
var damage: int = 1
var text = "Attack:" + str(attack_power)
var roll = randf()

				
func get_input():
	var input_direction = Input.get_vector("Left","Right","Up","Down")
	velocity = input_direction * speed * 0.5
	
func _physics_process(_delta):
	get_input()
	move_and_slide()
		
	if Input.is_action_pressed("Right"):
		$Borodinsky.flip_h=true
	if Input.is_action_pressed("Left"):
		$Borodinsky.flip_h=false
	
	
	#if Input.is_action_pressed("Shoot"):
	#	_shoot() shooting will be automated

		
