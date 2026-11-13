extends CharacterBody2D

@export var speed: float = 300.0

func _physics_process(delta: float) -> void:
	# Get input direction as a normalized vector (-1 to 1 on X and Y)
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Apply speed to the direction
	velocity = direction * speed
	
	# Move the character and slide smoothly along walls
	move_and_slide()
