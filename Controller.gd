extends KinematicBody2D



func _process(_delta: float) -> void:
	var move = Vector2();
	move.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	move.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	var _v = move_and_slide(move * 100.0)
