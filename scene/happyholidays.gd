extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$hhanim.visible = false # Replace with function body.
	$hhbg.self_modulate.a = 0.0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.state == "over":
		$hhbg.self_modulate.a += 0.003


func _on_fire_body_entered(body: Node2D) -> void:
	if body.name == "player":
		print("entered")
		await wait(3.0)
		$hhanim.visible = true # Replace with function body.
		$hhanim.play("default")
	
func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
