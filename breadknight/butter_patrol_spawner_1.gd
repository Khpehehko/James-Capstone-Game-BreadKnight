extends Marker2D

@onready var enemy = preload("res://Scene Tscn/butter_patrol.tscn")



func _on_timer_timeout() -> void:
	var ene = enemy.instantiate()
	ene.position = position
	get_parent().get_node("Enemies").add_child(ene) 
