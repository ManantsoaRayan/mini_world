extends Node3D

@onready var head = $"."
@onready var player = $".."

var vect := Vector3()
@export var sensitivity := 0.12

func _ready() -> void:
  Input.mouse_mode = Input.MOUSE_MODE_CAPTURED

func _process(delta: float) -> void:
  head.rotation_degrees.x = -1 * vect.x
  head.rotation_degrees.y = vect.y

func _input(event: InputEvent) -> void:
  if event is InputEventMouseMotion:
    vect.y -= (event.relative.x * sensitivity)
    vect.x -= (event.relative.y * sensitivity)
    vect.x = clamp(vect.x, -40, 40)