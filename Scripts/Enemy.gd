extends Node2D

export var speed := 30
export var move_distance := 18

var direction := 1
var start_position := Vector2()
var initial_flip_h := false

func _ready():
	start_position = position
	initial_flip_h = $Sprite.flip_h  # store the initial flip state

func _process(delta):
	# Move enemy
	position.x += direction * speed * delta
	$AnimationPlayer.play("Enemy")
	
	# Flip sprite based on direction and initial orientation
	$Sprite.flip_h = initial_flip_h if direction > 0 else not initial_flip_h
	
	# Check distance from start position
	if abs(position.x - start_position.x) > move_distance:
		direction *= -1


