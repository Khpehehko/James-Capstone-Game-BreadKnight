extends CharacterBody2D

@onready var bullet = get_tree().get_root().get_node("bullet")
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
		shoot()
	
func _shoot():
	var instance = projectile.instantiate()
	instance.direction = rotation
	instance.spawnPos = global_position
	instance.spawnRot = global_rotation
	bullet.add_child.call_deferred(instance)
	 
