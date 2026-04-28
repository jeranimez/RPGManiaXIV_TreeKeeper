extends Node2D


var config = ConfigFile.new()

#saves information pertaining to current progress
func save(level, stats, inventory, dialogue):
	config.set_value("level","current",level)
	config.set_value("stats","current",stats)
	config.set_value("inventory","current",inventory)
	config.set_value("dialogue","current",dialogue)
	config.save("res://scenes/savegame.cfg")
	
#on continue, recovers save information from savegame file
func recover():
	var err = config.load("res://scenes/savegame.cfg")
	if err == OK:
		get_tree().change_scene_to_file(config.get_value("level","current"))
