extends Area2D

func _ready():
	pass # Replace with function body.

func _process(delta):
	$AnimationPlayer.play("Item")

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		queue_free()
		World1.ItemSound.play()
