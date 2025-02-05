extends Node


#default values for the main character
var player_name = "Hunter"
var default_player_health = 100
var default_player_damage = 1
var default_player_armor = 0
var default_player_tenacity = 0
var current_dungeon: DungeonData

func get_player_health() -> int:
	return default_player_health
func get_player_damage() -> int:
	return default_player_damage
func get_player_armor() -> int:
	return default_player_armor
func get_player_tenacity() -> int:
	return default_player_tenacity
