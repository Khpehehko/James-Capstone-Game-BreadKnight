extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Breadknight.text = "Meet Breadknight!"
	$Breadknight.modulate = Color.BLANCHED_ALMOND


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
