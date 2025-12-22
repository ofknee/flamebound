extends Node

var health: int = 3



#func _on_body_entered(body: Node2D) -> void:
	#if body.name == "player":
		#inside = true
#
	#if ($AnimatedSprite2D.frame == 4):
		#Global.health -= 1
#
#func _on_body_exited(body: Node2D) -> void:
	#if body.name == "player":
			#inside = false
#
#func _on_animated_sprite_2d_frame_changed() -> void:
	#if ($AnimatedSprite2D.frame == 4) and (inside == true):
		#Global.health -= 1
#
#func wait(seconds: float) -> void:
	#await get_tree().create_timer(seconds).timeout
