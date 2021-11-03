extends Spatial


var all_weapon = {}

var weapon = {}

var hud

var current_weapon
var current_weapon_slot = "Empty"

var charging_weapon = false
var unequipped_weapon = false


func _ready():
	
	
	hud = owner.get_node("HUD")
	
	all_weapon = {
		"Unarmed" : preload("res://Unarmed/unarmed.tscn"),
		"Pistol" : preload("res://gun/pistol.tscn"),
		"Ripfle" : preload("res://gun/Rifle.tscn")
	}
	
	weapon = {
		"Empty": $Unarmed,
		"Primary": $Pistol,
		"Secondary":$Rifle
	}
	
	
	
	
	
	
	
	
	
