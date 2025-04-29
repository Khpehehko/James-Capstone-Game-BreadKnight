extends Node2D

@onready var victory: AudioStreamPlayer2D = $win

func _ready() -> void:
	victory.play()
