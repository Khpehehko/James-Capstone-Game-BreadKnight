extends CharacterBody2D

@onready var main = get_tree().get_root().get_node("main")
@onready var projectile = load("res://bullet.tscn")

var score = 0
@export var health: int = 48
var attack_power: int = 3
var damage: int = 1
var text = "Attack:" + str(attack_power)
var roll = randf()
	
func _process(float):
	if Input.is_action_pressed("Up"):
		position.y -= 4
	if Input.is_action_pressed("Down"):
		position.y += 4
	if Input.is_action_pressed("Left"):
		position.x -= 4
	if Input.is_action_pressed("Right"):
		position.x += 4
		
	move_and_slide()
	
	if Input.is_action_pressed("Shoot"):
		_shoot()
	
func _shoot():
	var instance = projectile.instantiate()
	instance.direction = rotation
	instance.spawnPosition = global_position
	instance.spawnRotation = rotation
	main.add_child.call_deferred(instance)
	
# give velocity to bullet, don't collide bullet with character body, reslove sliding issue
