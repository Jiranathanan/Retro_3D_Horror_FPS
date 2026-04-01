extends Node3D

@export var jump_force = 15.0
@export var gravity =  30.0

@export var max_speed = 15.0
@export var move_accel = 4.0
@export var stop_drag = 0.9

var character_body: CharacterBody3D
var move_drag = 0.0
var move_dir: Vector3

func _ready():
	character_body = get_parent()
	move_drag = float(move_accel) / max_speed
	
func set_move_dir(new_move_dir: Vector3):
	move_dir = new_move_dir
