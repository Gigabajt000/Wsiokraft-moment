extends Control

@export var settings: Control
@export var main_menu: Control


func _ready():
	visible = false

func _process(delta):
	if Input.is_action_just_pressed("escape") and settings.visible == false and main_menu.visible == false:
		
		if AaGlobal.Is_Playing == true:
			visible = true
			AaGlobal.Is_Playing = false

		elif AaGlobal.Is_Playing == false:
			visible = false
			AaGlobal.Is_Playing = true
			AaGlobal.Resume()

func _on_resume_pressed():
	visible = false
	AaGlobal.Is_Playing = true
	AaGlobal.Resume()
	
func _on_settings_pressed():
	visible = false
	settings.visible = true

func _on_main_menu_pressed():
	visible = false
	main_menu.visible = true
