extends Node2D
const PRE_INIMIGO =preload("res://inimigo.tscn")
var vel = 200
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	translate(Vector2(0,-1)*vel *delta)
	pass
 



func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
	pass # Replace with function body.


func _on_area_2d_area_entered(area: Area2D) -> void:
	queue_free()
	pass # Replace with function body.
