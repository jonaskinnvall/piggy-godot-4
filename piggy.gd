extends Area2D

var speed = 70
@onready var animation_player = $AnimationPlayer

func _process(delta):
	var input_vector = Input.get_vector("move_left","move_right","move_up","move_down")
	position += input_vector * speed * delta

	if input_vector == Vector2.ZERO:
		animation_player.play("idle")
	else:
		animation_player.play("run")
