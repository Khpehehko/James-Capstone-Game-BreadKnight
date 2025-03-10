extends Marker2D

@onready var enemy = preload("res://Scene Tscn/frying_pan.tscn")


func _on_timer_timeout():
	var ene = enemy.instantiate()
	ene.position = position
	get_parent().get_node("Characters").add_child(ene) 
