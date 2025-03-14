extends Control

@export var main_menu: Control


func _ready():
	visible = false


func _on_music_audio_value_changed(value):
	pass # Replace with function body.


func _on_sound_effects_audio_value_changed(value):
	pass # Replace with function body.


func _on_check_box_toggled(toggled_on):
	pass # Replace with function body.
	

func _on_main_menu_pressed():
	visible = false
	main_menu.visible = true
