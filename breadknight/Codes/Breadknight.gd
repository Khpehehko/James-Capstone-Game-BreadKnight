extends CharacterBody2D

const speed = 1000

#HP system WIP
#Score system WTP
@onready var healthbar = $hitdetector/Healthbar
@export var health = 1
var end_game = preload("res://Scene Tscn/menu.tscn") as PackedScene

func _ready():
	health = 16
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

func _end_game():
	if health <= 0:
		get_tree().change_scene_to_packed(end_game)
	

func _on_hitdetector_body_entered(body: CharacterBody2D):
	if body.is_in_group("enemies"):
		health -= 1
		print(health)
		$hitdetector/Healthbar.health = health
	if health <= 0:
		queue_free()
		
		
func _on_hitdetector_area_entered(area: Area2D):
	if area.is_in_group("environment"):
		get_tree().change_scene_to_file("res://Scene Tscn/Baugette test.tscn")
