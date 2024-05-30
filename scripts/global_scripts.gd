extends Node

var score = 0
var score_to_win = 8
var time_elapsed

var player_name
var email
var password
var confirm_password


func _ready():
	SilentWolf.configure({
		"api_key": "qX98DtypRz8oLTy9as03G5B6ZrnlDj2o4qF7SrcG",
		"game_id": "matchtilesgame",
		"log_level": 1
		})

	SilentWolf.configure_scores({
		"open_scene_on_close": "res://scenes/main_scene.tscn"
		})	
	
	SilentWolf.configure_auth({
		"redirect_to_scene": "res://scenes/login_screen.tscn",
		"login_scene": "res://addons/silent_wolf/Auth/Login.tscn",
		"email_confirmation_scene": "res://addons/silent_wolf/Auth/ConfirmEmail.tscn",
		"reset_password_scene": "res://addons/silent_wolf/Auth/ResetPassword.tscn",
		"session_duration_seconds": 0,
		"saved_session_expiration_days": 30
	})

