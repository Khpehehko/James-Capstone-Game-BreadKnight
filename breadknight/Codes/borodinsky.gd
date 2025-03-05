extends CharacterBody2D

var score = 0
@export var health: int = 12
var attack_power: int = 3
var damage: int = 2
var text = "Attack:" + str(attack_power)
var roll = randf()

func _process(float):
	if Input.is_action_pressed("Up"):
		position.y -= 2
	if Input.is_action_pressed("Down"):
		position.y += 2
	if Input.is_action_pressed("Left"):
		position.x -= 2
	if Input.is_action_pressed("Right"):
		position.x += 2
		
	move_and_slide()
	
