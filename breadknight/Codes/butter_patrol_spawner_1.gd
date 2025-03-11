extends Marker2D

@onready var enemy = preload("res://Scene Tscn/butter_patrol.tscn")

@export var player_target : CharacterBody2D

func _on_butter_timer_timeout():
	
	var ene = enemy.instantiate()
	
	ene.position = position
	ene.target = player_target
	#print(player_target)
	get_parent().get_node("Characters").add_child(ene)
	ene.target = player_target
	#print(player_target)
