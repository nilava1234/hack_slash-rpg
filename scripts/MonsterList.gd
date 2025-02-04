extends Resource
class_name MonsterList

@export var monsters: Array[MonsterData] = []

func get_size() -> int:
	return monsters.size()
func get_monster(index: int) -> MonsterData:
	return monsters[index]
