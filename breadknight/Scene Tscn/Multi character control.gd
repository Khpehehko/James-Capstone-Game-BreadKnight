extends Sprite2D

var active = false
var my_array = [0, "strings", true]

func _ready():
	for number in my_array:
		print(number)

func _process(delta):
	if active:
		if Input.is_action_pressed(""):
			position.x += 4


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		$"..".activeKnight = self
		
	if event is InputEventMouseButton:
		var knights = get_tree().get_nodes_in_group("")
		for current_knight in knights:
			if current_knight == self:
				current_knight.active = true
			else:
				current_knight.active = false
				
