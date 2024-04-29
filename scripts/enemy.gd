extends Node2D
const speed = 60
var direction = 1
@onready var raycast_right = $RaycastRight
@onready var raycast_l_eft = $RaycastLEft
@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if raycast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if raycast_l_eft.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	position.x += direction * speed * delta

