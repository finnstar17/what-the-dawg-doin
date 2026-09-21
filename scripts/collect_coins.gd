extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.coins_earned += body.bones_collected * 25
		body.get_parent().get_node("CanvasLayer").get_node("Coins").text = "COINS: " +  str(body.coins_earned)
		body.bones_collected = 0
		body.get_parent().get_node("CanvasLayer").get_node("Bones").text = "BONES: " + str(body.bones_collected)
		print(body.coins_earned)
