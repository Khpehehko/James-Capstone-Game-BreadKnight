extends CharacterBody2D

@onready var main = get_tree().get_root().get_node("main")
@onready var projectile = load("res://Scene Tscn/bullet.tscn")
@export var speed = 1000

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
	velocity = input_direction * speed * 1.75
	
func _physics_process(_delta):
	get_input()
	move_and_slide()
	
	if Input.is_action_pressed("Right"):
		$Breadknight.flip_h=true
	if Input.is_action_pressed("Left"):
		$Breadknight.flip_h=false
	
	
	#if Input.is_action_pressed("Shoot"):
	#	_shoot()

		
func _shoot():
	var instance = projectile.instantiate()
	instance.direction = rotation
	instance.spawnPosition = global_position
	instance.spawnRotation = rotation
	instance.zdex = z_index -1
	main.add_child.call_deferred(instance)
	
# give velocity to bullet, reslove sliding issue, add timer
	
func _on_bulletcooldown_timeout() -> void:
	_shoot()
