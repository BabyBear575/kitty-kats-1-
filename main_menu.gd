class_name mainmenu
extends Control


@onready var start_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/start_button as Button
@onready var exit_button: Button = $MarginContainer/HBoxContainer/VBoxContainer/exit_button as Button
@onready var start_level = preload("res://empty_scene.tscn") as PackedScene


func _ready():
	start_button.button_down.connect(on_start_pressed)
	exit_button.button_down.connect(on_exit_pressed)

func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)


func on_exit_pressed() -> void:
	get_tree().quit()
