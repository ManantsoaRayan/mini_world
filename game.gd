extends Node3D

func _ready() -> void:
  if Global.life <= Global.GAME_OVER_LIFE:
    get_tree().change_scene_to_file("res://game_over_view.tscn")
