extends Node3D
@export var max_health = 100
@onready var cur_health = max_health
@export var gib_at = -10
@export var verbose = false

signal died
signal healed
signal damaged
signal gibbed
signal health_changed(cur_health, max_health)

func _ready():
	health_changed.emit(cur_health, max_health)
	if verbose:
		print("starting health: %s/%s" % [cur_health, max_health])
	
func hurt():
	pass
	
func heal():
	pass
