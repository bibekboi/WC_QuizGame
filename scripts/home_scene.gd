extends Control


func _on_new_game_button_down():
	if SilentWolf.Auth.logged_in_player:
		print(str(SilentWolf.Auth.logged_in_player))
		get_tree().change_scene_to_file("res://scenes/main_scene.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/login_screen.tscn")


func _on_leaderboard_button_down():
	print("Leaderboard Pressed!")


func _on_quit_game_button_down():
	get_tree().quit()


