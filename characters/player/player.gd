extends CharacterBody3D

@onready var camera_3d: Camera3D = $Camera3D
@export var mouse_sensitivity_h = 0.15
@export var mouse_sensitivity_v = 0.15

func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	
