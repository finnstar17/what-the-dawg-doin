extends Area2D

@export var collected = false

func _on_body_entered(body: Node2D) -> void:
	if not collected:
		collected = true
		$Sprite2D.visible = false
		body.bones_collected += 1
		body.get_parent().get_node("CanvasLayer").get_node("Bones").text = "BONES: " + str(body.bones_collected)
		print(body.bones_collected)

		await get_tree().create_timer(10).timeout
		collected = false
		$Sprite2D.visible = true
