extends CharacterBody2D


const SPEED = 10.0
var click_position = position
var item = false
@onready var door = $door



func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	if Input.is_action_just_pressed("left_click"):
		click_position = get_global_mouse_position()
<<<<<<< Updated upstream
=======
		if door.is_clicked() == true:
			item = true
		else:
			item = false
>>>>>>> Stashed changes
	
	if Input.is_action_pressed("left"):
		item = false
		click_position = position
		position.x -= SPEED
	elif Input.is_action_pressed("right"):
		item = false
		click_position = position
		position.x += SPEED
	else:
		if click_position.x == 0:
			click_position = position
		if position.x < click_position.x - 10:
			position.x += SPEED
		elif position.x > click_position.x + 10:
			position.x -= SPEED

	move_and_slide()

func is_item():
	return item
