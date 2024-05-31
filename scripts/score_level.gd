extends Control

@onready var score = $ScoreShield/Score

func _ready():
	score.text = str(GlobalScripts.score)


func _on_cross_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_scene.tscn")


func _on_leaderboard_button_down() -> void:
	get_tree().change_scene_to_file("res://addons/silent_wolf/Scores/Leaderboard.tscn")
