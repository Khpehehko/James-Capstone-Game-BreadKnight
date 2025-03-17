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


#func _on_hitdetector_area_entered(area: Area2D) -> void:
	#health -= 1
	#print(health)
	#$Healthbar.health = health


func _on_hitdetector_body_entered(body: Node2D):
	if body.is_in_group("enemies"):
		health -= 1
		print(health)
		$Healthbar.health = health
		
		
func _on_hitdetector_area_entered(area: Area2D):
	if area.is_in_group("environment"):
		get_tree().change_scene_to_file("res://Scene Tscn/Baugette test.tscn")
