extends Node2D

@onready var timer = $"Change level/Change scene timer"
@onready var breadknight = $"../Characters/Breadknight"
@onready var baugette = $"../Characters/Baugette"

func _on_change_level_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("characters"):
		timer.start()

func _on_change_scene_timer_timeout() -> void:
	if breadknight:
		get_tree().change_scene_to_file("res://success.tscn")
	elif baugette:
		get_tree().change_scene_to_file("res://Scene Tscn/Breadknight Level 1.tscn")
