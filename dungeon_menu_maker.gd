extends HBoxContainer

@export var dungeon_list: DungeonList
@export var template: Button

func _ready() -> void:
	for i in range(dungeon_list.get_size()):
		var cur_dungeon = dungeon_list.get_dungeon_data(i)
		var copy = template.duplicate(Node.DUPLICATE_SCRIPTS)
		copy.icon = cur_dungeon.icon
		copy.get_child(0).text = cur_dungeon.name
		copy.dungeon_data = cur_dungeon
		copy.pressed.connect(copy._on_pressed)
		add_child(copy)
