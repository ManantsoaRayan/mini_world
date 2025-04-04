extends Node2D


func _on_play_pressed() -> void:
  Global.reset()
  get_tree().change_scene_to_file("res://game.tscn")


func _on_quit_pressed() -> void:
  free()
