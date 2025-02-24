extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Breadknight.text = "Meet Breadknight!"
	$Breadknight.modulate = Color.BLANCHED_ALMOND


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Input.is_action_pressed("Up")
	position.x -= 5
	Input.is_action_pressed("Down")
	position.x += 5
	Input.is_action_pressed("Left")
	position.y += 5
	Input.is_action_pressed("Right")
	position.y -= 5
