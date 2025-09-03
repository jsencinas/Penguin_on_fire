extends KinematicBody2D

var speed = 120
var dash_speed = 180
var jump = -150
var gravity = 300
var movement = Vector2()


func _physics_process(delta):
	if not World1.MusicSound.is_playing():
		World1.MusicSound.play()
	movement.x = 0
	movement.y += gravity * delta
	
	var current_speed = speed
	if Input.is_key_pressed(KEY_SHIFT):
		current_speed = dash_speed
	
	if Input.is_key_pressed(KEY_D):
		$Sprite.flip_h = false
		movement.x += current_speed
		$AnimationPlayer.play("Moving")
		
	elif Input.is_key_pressed(KEY_A):
		$Sprite.flip_h = true
		movement.x -= current_speed
		$AnimationPlayer.play("Moving")
		
	else:
		$AnimationPlayer.play("Stay")

	if Input.is_key_pressed(KEY_SPACE) && is_on_floor():
		movement.y = jump 
		World1.JumpSound.play() 
	
	movement = move_and_slide(movement, Vector2(0,-1))


