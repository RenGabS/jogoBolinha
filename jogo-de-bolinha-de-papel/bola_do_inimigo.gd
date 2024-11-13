extends Node2D
const PRE_BIOLINHA = preload("res://bola_do_inimigo.tscn")
var vel = 200
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	translate(Vector2(0,1))
	pass
