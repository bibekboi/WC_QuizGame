extends Control


func _on_register_pressed():
	get_tree().change_scene_to_file("res://addons/silent_wolf/Auth/Register.tscn")


func _on_login_pressed():
	get_tree().change_scene_to_file("res://addons/silent_wolf/Auth/Login.tscn")


func _on_logout_pressed():
	SilentWolf.Auth.logout_player()


func _on_cross_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/home_scene.tscn")
