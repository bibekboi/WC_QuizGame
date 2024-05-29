extends Control


func _on_new_game_button_down():
	print("New Game Pressed!")


func _on_leaderboard_button_down():
	print("Leaderboard Pressed!")


func _on_quit_game_button_down():
	get_tree().quit()
