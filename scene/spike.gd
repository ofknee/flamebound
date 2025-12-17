extends Area2D

var inside: bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if (inside == true) and 
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		inside = true

	if ($AnimatedSprite2D.frame == 4):
		Global.health -= 1

func _on_body_exited(body: Node2D) -> void:
	if body.name == "player":
			inside = false

func _on_animated_sprite_2d_frame_changed() -> void:
	if ($AnimatedSprite2D.frame == 4) and (inside == true):
		Global.health -= 1

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
