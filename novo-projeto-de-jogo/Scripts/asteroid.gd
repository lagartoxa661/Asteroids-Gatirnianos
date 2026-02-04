extends Area2D

var movement_vector := Vector2(0, -1)

enum AsteroidSize{LARGE, MEDIUM, SMALL}
@export var size := AsteroidSize.LARGE

var speed := 50

func ready():
	rotation = randf_range(0, 2*PI)
	
	match size:
		AsteroidSize.LARGE:
			speed = randf_range(50, 100)
		AsteroidSize.MEDIUM:
			speed = randf_range(100, 150)
		AsteroidSize.SMALL:
			speed = randf_range(100, 200)
	print(speed)

func _physics_process(delta):
	global_position += movement_vector.rotated(rotation) * speed * delta
