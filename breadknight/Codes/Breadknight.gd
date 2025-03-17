extends CharacterBody2D

const speed = 1000

#HP system WIP
#Score system WTP
@onready var healthbar = $Healthbar
@export var health = 24

func _ready():
	health = 24
	healthbar._init_health(health)
	
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

func _set_health(value):
	if health <= 0:
		queue_free()
	healthbar.health = health 


func _on_hitdetector_area_entered(area: Area2D) -> void:
	health -= 1
