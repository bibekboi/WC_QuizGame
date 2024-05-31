extends Control

@onready var leaderboard_scene = $LeaderboardScene

func _ready():
	leaderboard_scene.visible = false

func _on_new_game_button_down():
	if SilentWolf.Auth.logged_in_player:
		print(str(SilentWolf.Auth.logged_in_player))
		get_tree().change_scene_to_file("res://scenes/main_scene.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/login_screen.tscn")


func _on_leaderboard_pressed():
	#get_tree().change_scene_to_file("res://addons/silent_wolf/Scores/Leaderboard.tscn")
	leaderboard_scene.visible = true

func _on_quit_game_button_down():
	get_tree().quit()
