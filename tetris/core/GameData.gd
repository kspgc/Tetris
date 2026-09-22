class_name GameData

var block_map: Array[Array]

func init() -> void:
	_init_block_map()
	

func _init_block_map() -> void:
	block_map.resize(20)
	for i in range(20):
		block_map[i].resize(10)
