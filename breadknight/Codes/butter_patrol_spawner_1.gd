extends Marker2D

@onready var enemy = preload("res://Scene Tscn/butter_patrol.tscn")


func _on_butter_timer_timeout():
	var ene = enemy.instantiate()
	ene.position = position
	get_parent().get_node("Characters").add_child(ene)
