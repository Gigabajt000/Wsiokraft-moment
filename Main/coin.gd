extends RigidBody3D

var interact: bool = false
@export var hand: Node3D

func _process(delta: float) -> void:
	if interact == true:
		freeze = true
		var player = get_tree().get_first_node_in_group("player")
		if player:
			reparent(player.get_node("head/hand"), false)
	else:
		freeze = false
