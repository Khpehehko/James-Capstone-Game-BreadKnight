extends Node2D

@onready var timer = $"Change level/winning timer"
@onready var breadknight = $"../Characters/Breadknight"
@onready var health = $hitdetector/Healthbar

func _on_change_level_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("characters"):
		timer.start()

func _on_winning_timer_timeout() -> void:
	if breadknight.health>0:
		get_tree().change_scene_to_file("res://success.tscn")
