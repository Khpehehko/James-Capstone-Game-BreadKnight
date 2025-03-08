extends Node2D

var current_wave: int
#which wave are we in now
@export var Butter_Patrol: PackedScene
#load packed scene
var starting_nodes: int
#how many nodes at the start = 0
var current_nodes: int
#if current nodes = 0 = starting nodes, transition to next wave
var wave_ended
#ending wave

func _ready():
	current_wave = 0
	starting_nodes = get_child_count()
	current_nodes = get_child_count()
	#position_to_next_wave()
	
func _position_to_next_wave():
	pass
	
