extends Node2D


# Declare member variables here. Examples:
onready var JumpSound = $JumpSound
onready var ItemSound = $ItemSound
onready var MusicSound = $MusicSound

# Called when the node enters the scene tree for the first time.
func _ready():
	World1.JumpSound = JumpSound
	World1.ItemSound = ItemSound
	World1.MusicSound = MusicSound


<<<<<<< HEAD
func _on_KillEnemy_body_entered(body):
	pass # Replace with function body.
=======
func _on_Area2D_body_entered(body):
	if (body.name == "Player"):
		var y_delta = position.y - body.position.y
		print(y_delta)
		
		if(y_delta > 12):
			queue_free()
			body.jump()
		else:
			print("kill")
			body.kill()
>>>>>>> 2007bd10958d564e1e73e0ee0af648b6c2a3c297
