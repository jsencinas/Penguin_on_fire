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

func _on_KillEnemy_body_entered(body):
	pass # Replace with function body.
