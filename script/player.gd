extends CharacterBody2D


@export var move_speed: float = 112

@onready var playeranim = $mainanim

var direction = "down"

func _process(_delta):
	
	if Global.state == "reg":
		
		if Input.is_action_pressed("right"):
			playeranim.play("run-right")
			direction = "right"
		elif Input.is_action_pressed("left"):
			playeranim.play("run-left")
			direction = "left"
		elif Input.is_action_pressed("down"):
			playeranim.play("run-down")
			direction = "down"
		elif Input.is_action_pressed("up"):
			playeranim.play("run-up")
			direction = "up"
		else: playeranim.play("idle-" + direction)	
	
	else:
		visible = false
	
		
func _physics_process(delta):
	

	# Get input direction
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)

# Update velocity if not paused
	if Global.state == "reg":
		velocity = input_direction * move_speed
	else:
		velocity = Vector2(0,0)
	
	# Move and Slide function uses velocity of character body to move character on map
	move_and_slide()
