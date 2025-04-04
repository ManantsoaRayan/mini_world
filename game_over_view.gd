extends Node2D

@onready var menu_button = $Control/Menu;
@onready var restart_button = $Control/Restart;


func _ready() -> void:
  Input.mouse_mode = Input.MOUSE_MODE_VISIBLE


func _on_restart_pressed() -> void:
  Global.reset()
  get_tree().change_scene_to_file("res://game.tscn")


func _on_menu_pressed() -> void:
  get_tree().change_scene_to_file("res://launcher.tscn")
