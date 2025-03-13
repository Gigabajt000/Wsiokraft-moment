extends StaticBody3D

var open: bool = false
@export var interact: bool = false

func _process(delta: float) -> void:
	if interact == true:
		if open == false and $AnimationPlayer.is_playing() == false:
			$AnimationPlayer.play("open_door")
			open = true
		elif open == true and $AnimationPlayer.is_playing() == false:
			$AnimationPlayer.play("close_door")
			open = false
	interact = false
