class_name BlockManager
extends Node

var game_data

func init(game_data_class) -> void:
	game_data = game_data_class

func check_line_is_full(pos: int) -> void:
	var cnt = 0
	for i in range(10):
		if(game_data.block_map[pos]):
			cnt += 1
	if(cnt == 10):
		remove_line()
		
func remove_line():
	pass
