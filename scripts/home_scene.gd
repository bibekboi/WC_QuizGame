extends Control


func _on_new_game_button_down():
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn")


func _on_leaderboard_button_down():
	print("Leaderboard Pressed!")


func _on_quit_game_button_down():
	get_tree().quit()
