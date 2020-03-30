tool
extends Viewport


func _ready():
	var parent_vp = _parent_vp()
	_sync_with_viewport(parent_vp)
	parent_vp.connect("size_changed", self, "_on_parent_viewport_size_changed")


func _parent_vp():
	return get_parent().get_viewport()


func _on_parent_viewport_size_changed():
	_sync_with_viewport(_parent_vp())


func _sync_with_viewport(viewport):
	size = viewport.size
	property_list_changed_notify()


func _process(_delta: float) -> void:
	var viewport = _parent_vp()
	global_canvas_transform = viewport.global_canvas_transform
	canvas_transform = viewport.canvas_transform
