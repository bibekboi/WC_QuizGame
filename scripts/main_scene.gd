extends Control

@onready var timer: Label = $Timer


var time_start = 0
var time_now = 0

func _ready():
	time_start = Time.get_ticks_msec()

"""
func _process(delta):
	time_now = Time.get_ticks_msec()
	var time_elapsed = (time_now - time_start) / 1000
	timer.text = str(time_elapsed)
	
	if GlobalScripts.score == 2:
		print("PAUSED")
"""

func _process(delta):
	_setTimer()


func _setTimer():
	if GlobalScripts.score < 8:
		time_now = Time.get_ticks_msec()
		GlobalScripts.time_elapsed = (time_now - time_start) / 1000
		timer.text = str(GlobalScripts.time_elapsed)
	else:
		print(str(GlobalScripts.time_elapsed))
		return GlobalScripts.time_elapsed


func _on_cross_button_down():
	get_tree().change_scene_to_file("res://scenes/home_scene.tscn")
