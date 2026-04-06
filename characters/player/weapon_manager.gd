extends Node3D
@onready var weapons = $Weapons.get_children()
var weapons_unlocked = []
var cur_slot = 0
var cur_weapon = null

func _ready():
	disable_all_weapons()
	for _i in range(weapons.size()):
		#weapons_unlocked.append(false)
		weapons_unlocked.append(true) # for testing

func disable_all_weapons():
	for weapon in weapons:
		if has_method("set_active"):
			weapon.set_active("false")
		else:
			weapon.hide()
	
func switch_to_previous_weapon():
	pass
	
func switch_to_next_weapon():
	pass
	
func switch_to_weapon_slot(slot_ind: int)->bool:
	return true
	
