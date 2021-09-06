extends Node2D

var tocando = 0

func _on_Area2D_body_entered(_body):
	if tocando == 0:
		$SomLoko.play()
		tocando = 1
		$Timer.start()

func _on_Timer_timeout():
	tocando = 0
