extends Node2D

@export var player_health_bar: ProgressBar
@export var background:Sprite2D

var enemy_dictionary = Global.current_dungeon
var player_health = Global.get_player_health()
var player_damage = Global.get_player_damage()
var player_armor = Global.get_player_armor()
var player_tenacity = Global.get_player_tenacity()
func _on_ready() -> void:
	print(enemy_dictionary.name)
	player_health_bar.max_value = player_health
	player_health_bar.value = player_health
	background.texture = enemy_dictionary.background
	
func _process(delta:float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		get_node("enemy").hit(player_damage)

func damage_player(damage: int) -> void:
	player_health_bar.value -= damage
	if player_health_bar.value <= 0:
		print("Game Over")
		get_tree().change_scene_to_file("res://town_scene.tscn")
		
func set_dungeon_data(data:DungeonData)->void:
	enemy_dictionary = data
func get_dungeon_data()->DungeonData:
	return enemy_dictionary
