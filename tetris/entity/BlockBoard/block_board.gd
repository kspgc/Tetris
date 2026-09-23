class_name BlockBoard
extends Node2D

func update() -> void:
	_check_each_line_full()
	_reload_board()
	#TODO plus points


func _check_each_line_full() -> void:
	for i in range(GameData.ROW - 1, -1, -1):
		_check_line_full(i)

func _check_line_full(i: int) -> void:
	var cnt = 0
	for j in range(GameData.COLUMN):
		if(GameData.block_map[i][j] != null):
			cnt += 1;
	if cnt == GameData.COLUMN:
		_erase_line(i)

func _erase_line(i: int) -> void:
	_erase_line_data(i)
	_move_down_data(i)

func _erase_line_data(i: int) -> void:
	for j in range(GameData.COLUMN):
		var sprite: Sprite2D = GameData.block_map[i][j]
		if is_instance_valid(sprite):
			sprite.queue_free()
	GameData.block_map[i].fill(null)

func _move_down_data(i: int) -> void:
	for j in range(i-1, -1, -1):
		GameData.block_map[j+1] = GameData.block_map[j].duplicate()
	GameData.block_map[0] = []
	GameData.block_map[0].resize(GameData.COLUMN)
	GameData.block_map[0].fill(null)

func _reload_board() -> void:
	for i in range(GameData.ROW):
		for j in range(GameData.COLUMN):
			var sprite: Sprite2D = GameData.block_map[i][j]
			if is_instance_valid(sprite):
				sprite.position = Utils.grid_to_world_pos(Vector2(j,i))
	
