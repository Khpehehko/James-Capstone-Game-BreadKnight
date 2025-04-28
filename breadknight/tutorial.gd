extends Label


@onready var Begin = $MarginContainer/HBoxContainer/VBoxContainer/Begin as Button
@onready var Game_Start = preload("res://Scene Tscn/Breadknight Level 1.tscn") as PackedScene


func _on_begin_button_down() -> void:
	get_tree().change_scene_to_packed(Game_Start)
