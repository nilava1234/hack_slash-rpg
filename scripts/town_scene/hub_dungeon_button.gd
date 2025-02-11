extends Button


func _on_pressed() -> void:
	var scene = load("res://dungeon_page.tscn").instantiate()
	get_parent().add_child(scene)
