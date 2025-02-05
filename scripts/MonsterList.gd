extends Resource
class_name MonsterList

@export var background: Texture2D
@export var monsters: Array[MonsterData] = []

func get_size() -> int:
	return monsters.size()
func get_monster(index: int) -> MonsterData:
	return monsters[index]
func get_background() -> Texture2D:
	return background
