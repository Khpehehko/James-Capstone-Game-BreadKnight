extends Node2D


@onready var start = $MarginContainer/HBoxContainer/VBoxContainer/Start as Button
@onready var exit = $MarginContainer/HBoxContainer/VBoxContainer/Exit as Button
@onready var Tutorial = preload("res://Scene Tscn/tutorial.tscn") as PackedScene

func _ready():
	start.button_down.connect(_on_start_pressed)
	exit.button_down.connect(_on_exit_pressed)
	
func _on_start_pressed():
	get_tree().change_scene_to_packed(Tutorial)

func _on_exit_pressed():
	get_tree().quit()
