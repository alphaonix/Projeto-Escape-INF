extends Control


func complete():
	
	var room_file = ProgressManager.previous_room
	var wall_name = ProgressManager.previous_wall_name

	ProgressManager.add_completed_puzzles(room_file, wall_name, filename)
	TextBox.show_texts(["Temperatura arrumada, posso examinar a sala agora."])
	Inventory.remove_item(preload("res://Items/ControleAr/ControleAr.tres"))
	print("LOG: Puzzle Air concluído.")
	ProgressManager.anxiety -= 25


func _on_GoBack_pressed():
	var _a = get_tree().change_scene(ProgressManager.previous_room)
