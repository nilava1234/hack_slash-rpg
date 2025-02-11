extends Button
@export var dungeon_data: DungeonData

func _on_pressed() -> void:
	Global.current_dungeon = dungeon_data
	get_tree().change_scene_to_file("res://action_scene.tscn")
