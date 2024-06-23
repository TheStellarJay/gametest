extends CharacterBody2D

@export var move_speed : float = 120
@onready var anim = $AnimatedSprite2D

func _physics_process(delta):
	#get input direction
	var input_direction = Vector2( #vector is a posistion, vector 2 is a posistion with 2 values: x and y
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	#update velocity
	velocity = input_direction * move_speed
	
	#Move and Slide function uses velocity of character body to move character on map
	move_and_slide()
