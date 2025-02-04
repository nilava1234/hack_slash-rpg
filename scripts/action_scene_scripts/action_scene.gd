extends Node2D

@export var player_health_bar: ProgressBar

var player_health = Global.get_player_health()
var player_damage = Global.get_player_damage()
var player_armor = Global.get_player_armor()
var player_tenacity = Global.get_player_tenacity()
func _on_ready() -> void:
	player_health_bar.max_value = player_health
	player_health_bar.value = player_health
	
func _process(delta:float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		get_node("enemy").hit(player_damage)
