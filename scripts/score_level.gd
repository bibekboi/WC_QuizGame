extends Control

@onready var score = $ScoreShield/Score

func _ready():
	score.text = str(GlobalScripts.score)
