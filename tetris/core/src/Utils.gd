extends Node

static func grid_to_world_pos(pos: Vector2i) -> Vector2:
	var x = pos.x * GameData.GRIDWIDTH
	var y = pos.y * GameData.GRIDWIDTH
	return Vector2(x,y) + GameData.TOPLEFTPOS
