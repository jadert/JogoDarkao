extends Node2D

onready var texto  = get_node("/root/Raiz/Elano")
onready var alerta = get_node("/root/Raiz/Estatua/Coisas/AnimatedSprite")
var estado = 1
var dentro = "N"

func _process(_delta):
	if dentro == "S":
		if Input.is_action_pressed("mensagem"):
			alerta.hide()
			texto.show()
			estado = 2

func _on_Area2D_body_entered(_body):
	if estado == 1:
		dentro = "S"
		alerta.show()

func _on_Area2D_body_exited(_body):
	alerta.hide()
	dentro = "N"
