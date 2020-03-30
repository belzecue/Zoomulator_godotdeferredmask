tool
extends Node2D


func _ready() -> void:
	$Walls.material.set_shader_param("mask_texture", $Viewport.get_texture())
