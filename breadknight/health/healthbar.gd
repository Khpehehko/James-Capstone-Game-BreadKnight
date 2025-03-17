extends ProgressBar


@onready var timer = $Timer
@onready var Damage_bar = $Damagebar
@export var health = 24: set = _set_health

func _set_health(_new_health):
	var previous_health = health
	health = min(max_value, _new_health)
	value = health
	
	if health <= 0:
		queue_free()
	
	if health < previous_health:
		timer.start()
	else:
		Damage_bar.value = health

func _init_health(_health):
	health = _health
	max_value = health
	value = health
	Damage_bar.value = health
	Damage_bar.max_value = health
	

func _on_timer_timeout():
	Damage_bar.value = health
