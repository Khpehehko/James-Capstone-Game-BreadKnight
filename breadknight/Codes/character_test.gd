extends Node2D
#Objectives: Bullet shooting mechanism, boss moving behavior, enemy spawn


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Breadknight.text = "Meet Breadknight!"
	$Breadknight.modulate = Color.BLANCHED_ALMOND
