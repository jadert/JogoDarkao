extends Node2D

func _on_Area2D_body_entered(_body):
	$SpriteADDR.show()

func _on_Area2D_body_exited(_body):
	$SpriteADDR.hide()
