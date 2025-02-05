extends Resource
class_name DungeonList

@export var monster_lists: Array[DungeonData] = []

func get_size() -> int:
	return monster_lists.size()
func get_dungeon_data(index: int) -> DungeonData:
	return monster_lists[index]
func get_list() -> Array[DungeonData]:
	return monster_lists
