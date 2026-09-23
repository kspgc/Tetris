extends Node

const ROW = 20
const COLUMN = 10
const GRIDWIDTH = 40
const TOPLEFTPOS = Vector2(770,170)

var block_map: Array[Array] #Sprite2D[][]

func init() -> void:
	_clear_all_block_nodes()
	_init_block_map()

func _clear_all_block_nodes() -> void:
	if block_map.is_empty():
		return
		
	for i in range(block_map.size()):
		for j in range(block_map[i].size()):
			var sprite = block_map[i][j]
			if is_instance_valid(sprite):
				sprite.queue_free()

func _init_block_map() -> void:
	block_map.clear()
	for i in range(ROW):
		var row: Array[Sprite2D] = []
		row.resize(COLUMN)
		row.fill(null)
		block_map.append(row)
		
