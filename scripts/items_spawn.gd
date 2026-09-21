extends Node2D

@onready var bone_scene = preload("res://scenes/bone_scene.tscn")

func _ready() -> void:
	for marker in get_children():
		if marker is Marker2D:
			var bone_instance = bone_scene.instantiate()
			bone_instance.position = marker.position
			add_child(bone_instance)