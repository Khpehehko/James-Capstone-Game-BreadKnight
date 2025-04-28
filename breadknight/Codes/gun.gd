extends Sprite2D

@onready var main = get_tree().get_root().get_node("Main")
@onready var BULLET = load("res://Scene Tscn/bullet.tscn")
@onready var muzzle: Marker2D = $Marker2D
@onready var GunSFX: AudioStreamPlayer2D = $GunSFX

func _ready():
	_shoot()

func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	
	rotation_degrees = wrap(rotation_degrees, 0, 360)
	if rotation_degrees > 90 and rotation_degrees < 270:
		scale.y = -3.611
	else:
		scale.y = 3.611
		
func _shoot():
	var bullet_instance = BULLET.instantiate()
	get_tree().root.add_child.call_deferred(bullet_instance)
	bullet_instance.global_position = muzzle.global_position
	bullet_instance.rotation = rotation
	$".".add_child.call_deferred(bullet_instance)

func _on_cooldown_timeout() -> void:
	_shoot()
	GunSFX.play()
