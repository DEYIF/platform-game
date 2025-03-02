extends Node2D

const SPEEDx = 60
const SPEEDy = 150
var direction = -1

@onready var slimesprite = $AnimatedSprite2D
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_down: RayCast2D = $RayCastDown

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# add gravity
	if not ray_cast_down.is_colliding():
		position.y += SPEEDy * delta
	if ray_cast_right.is_colliding():
		direction = -1
	if ray_cast_left.is_colliding():
		direction = 1
	slimesprite.flip_h = direction-1
	position.x += direction * SPEEDx * delta
