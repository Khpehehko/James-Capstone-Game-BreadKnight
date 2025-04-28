extends CharacterBody2D

const speed = 1000

#HP system WIP
#Score system WTP
@onready var healthbar = $hitdetector/Healthbar
@export var health = 1
@export var label = Label
@export var time = Timer

func _ready():
	health = 16
	healthbar._init_health(health)
	label = $Camera2D/Label
	time = $Camera2D/Timer
	
	time.start()
	
func _update_label():
	label.text = str(ceil(time.time_left))
	
func _process(delta: float) -> void:
	_update_label()
	
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
	if health <= 0:
		get_tree().change_scene_to_file("res://Scene Tscn/failed.tscn")

func _set_health(value):
	healthbar.health = health
	
func _on_hitdetector_body_entered(body: CharacterBody2D):
	if body.is_in_group("enemies"):
		health -= 1
		print(health)
		$hitdetector/Healthbar.health = health
	if health <= 0:
		queue_free()

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://Scene Tscn/success.tscn")
