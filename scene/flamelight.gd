extends PointLight2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	blend_mode = Light2D.BLEND_MODE_ADD


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.state == "over":
		if blend_mode == Light2D.BLEND_MODE_ADD and energy > 0:
			energy -= 0.03
		else:
			blend_mode = Light2D.BLEND_MODE_SUB
			texture_scale += 0.05
			energy += 0.01
		
		#Color += 1
