extends Area2D

func _ready():
	pass
	
func _on_KillEnemy_body_entered(body):
	if body.is_in_group("player"):
		if body.has_method("bounce"):
			body.bounce()
		queue_free()

