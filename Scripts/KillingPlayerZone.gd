extends Area2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass

func _on_KillingPlayerZone_body_entered(body):
	if body.get_name() == "Player":
		get_tree().reload_current_scene()
