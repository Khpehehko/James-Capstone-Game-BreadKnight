extends CharacterBody2D

@export var health: int = 12
var attack_power: int = 3
var damage: int = 2
var text = "Attack:" + str(attack_power)

const GRAVITY = 9.81

func _ready():
	print(text)
		
func _input(event):
	if event.is_action_pressed("Jump"):
		health -= 2 
		print(health)
		
		if health <= 0:
			health = 0
			print("You died")
		elif health < 6:
			print("You are injured")
		else:
			print("You are fine")
			
func respawn():
	pass
	
