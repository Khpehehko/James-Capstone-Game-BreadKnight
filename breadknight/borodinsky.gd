extends CharacterBody2D

var score = 0
@export var health: int = 12
var attack_power: int = 3
var damage: int = 2
var text = "Attack:" + str(attack_power)
var roll = randf()

func _ready():
	print(text)
	var result = add(10,21)
	result = add(result,-5)
	print(result)
	
func _process(float):
	if Input.is_action_pressed("Up"):
		position.y -= 1
	if Input.is_action_pressed("Down"):
		position.y += 1
	if Input.is_action_pressed("Left"):
		position.x -= 1
	if Input.is_action_pressed("Right"):
		position.x += 1
		
	move_and_slide()
	
func _input(event):
	if event.is_action_pressed("Jump"):
		health -= 2 
		print(health)
		
		if health <= 0:
			health = 0
			print("You died")
		elif health < 6:
			print("You are inju red")
		else:
			print("You are fine")
			
		if roll <= 0.8:
			print("New Skill Acquired")
		else:
			print("Change form")
		
func respawn():
	pass
	
func add(num1,num2):
	var result = num1 + num2
	return result
	
