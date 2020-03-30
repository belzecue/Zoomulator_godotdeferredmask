tool
extends Node


func _process(_delta: float) -> void:
	_sort_children()


func _sort_children():
	var children = get_children()
	children.sort_custom(self, "_sort_child")
	for i in range(children.size()):
		move_child(children[i], i)


func _sort_child(a, b) -> bool:
	if not "global_position" in a:
		return false
	if not "global_position" in b:
		return true
	return a.global_position.y > b.global_position.y
