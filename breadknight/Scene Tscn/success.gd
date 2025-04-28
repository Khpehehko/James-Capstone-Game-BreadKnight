extends Label


@onready var PlayAgain = $MarginContainer/HBoxContainer/VBoxContainer/Again as Button
@onready var Game_Start = preload("res://Scene Tscn/Breadknight Level 1.tscn") as PackedScene
@onready var Menu = $MarginContainer/HBoxContainer/VBoxContainer/Menu as Button
@onready var To_Menu = preload("res://Scene Tscn/menu.tscn") as PackedScene


func _on_again_button_down() -> void:
	get_tree().change_scene_to_packed(Game_Start)

func _on_menu_button_down() -> void:
	get_tree().change_scene_to_packed(To_Menu)
