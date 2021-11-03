extends Spatial
class_name Weapon

var weapon_manager = null
var player = null
var animation_player

var is_equipped = false
var is_firing = false
var is_reloading = false


export var weapon_name = "Weapon"

export var equipped_speed = 1.0
export var unequipped_speed = 1.0

func equipped():
	animation_player.play("Equip", -1.0 , equipped_speed)
	update_armo(s)
	
func unequipped():
	animation_player.play("Unequip", -1.0 , unequipped_speed)

func is_equipped_finished():
	if is_equipped:
		return true
	else:
		return false
		
func is_unequipped_finished():
	if is_equipped:
		return false
	else:
		return true



func on_animation_finished(anin_name):
	match anin_name:
		"Unequip":
			is_equipped = false
		"Equip":
			is_equipped = true


func update_armo(action = "Refresh"):
	
	
	var weapon_data = {
		"Name": weapon_name
	}


