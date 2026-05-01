extends Area2D

@onready var player = $player
var clicked = false
var click_position = position

func _input_event(viewport, event, shape_idx):
	if event.is_action_pressed("left_click"):
		click_position = get_global_mouse_position()
		clicked = true
		print(clicked)
		
func _process(delta):
	if player.is_item() == false:
		clicked = false
	if clicked == true and (click_position.x - 100 < player.position.x < click_position.x + 100):
		print("next level")

func is_clicked():
	return clicked
