extends Node2D

@onready var raycast = $RayCast2D  # Adiciona um RayCast2D na cena
const PRE_BOLINHA = preload("res://bolinha.tscn")
var vel = 100

@onready var anim = $AnimatedSprite2D

func _ready():
	pass
	

func _process(delta: float) -> void:
	var dirtX = 0
	var velocity = Input.get_vector("move_direita", "move_esquerda", "ui_accept", "ui_down")

	# Movimentação do jogador com as teclas
	if velocity.x != 0:
		anim.play("move")
	else:
		anim.play("default")

	if Input.is_action_pressed("move_esquerda"):
		dirtX += -1
	if Input.is_action_pressed("move_direita"):
		dirtX += 1
	
	if Input.is_action_just_pressed("ui_accept"):
		if get_tree().get_nodes_in_group("bolinha").size() <= 4:
			var bolinha = PRE_BOLINHA.instantiate()
			get_parent().add_child(bolinha)
			bolinha.global_position = global_position

	# Movimenta o jogador horizontalmente
	translate(Vector2(dirtX, 0) * vel * delta)

	# Restringe a posição do jogador dentro dos limites horizontais
	global_position.x = clamp(global_position.x, 83, 750)

	# Dispara o raio quando a tecla de espaço é pressionada
	
