extends Control

@onready var score = $ScoreShield/Score
@onready var leaderboard_scene = preload("res://addons/silent_wolf/Scores/Leaderboard.tscn")

var isScoreSubmitted : bool = false

func _ready():
	score.text = str(GlobalScripts.time_elapsed)


func _on_cross_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/home_scene.tscn")


"""
	var player_name = SilentWolf.Auth.logged_in_player
	
	SilentWolf.Scores.save_score(player_name, score)
	#get_tree().change_scene_to_file("res://addons/silent_wolf/Scores/Leaderboard.tscn")
	get_tree().change_scene_to_packed(leaderboard_scene)
"""


func _on_submit_score_pressed():
	var player_name = SilentWolf.Auth.logged_in_player
	var score = GlobalScripts.time_elapsed
	
	isScoreSubmitted = true
	
	SilentWolf.Scores.save_score(player_name, score)
	#get_tree().change_scene_to_file("res://addons/silent_wolf/Scores/Leaderboard.tscn")
	get_tree().change_scene_to_packed(leaderboard_scene)


func _on_leaderboard_pressed():
	if isScoreSubmitted == true:
		get_tree().change_scene_to_packed(leaderboard_scene)
	else:
		pass
