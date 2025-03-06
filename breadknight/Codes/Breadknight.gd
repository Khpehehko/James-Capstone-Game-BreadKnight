extends CharacterBody2D

const speed = 1000

#HP system WIP
#Score system WTP
var score = 0
@export var health: int = 48
var attack_power: int = 3
var damage: int = 1
var text = "Attack:" + str(attack_power)
var roll = randf()
	
func get_input():
	var input_direction = Input.get_vector("Left","Right","Up","Down")
	velocity = input_direction * speed * 1
	
func _physics_process(_delta):
	get_input()
	move_and_slide()
	
	if Input.is_action_pressed("Right"):
		$Breadknight.flip_h=true
	if Input.is_action_pressed("Left"):
		$Breadknight.flip_h=false

		
