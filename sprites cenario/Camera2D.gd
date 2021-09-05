extends Camera2D

onready var player = get_node("/root/Raiz/Paredes/Jogador")

func _process(_delta):
	if (player.position.y < 0):
		position.y = -180
	else:
		position.y = 300	
