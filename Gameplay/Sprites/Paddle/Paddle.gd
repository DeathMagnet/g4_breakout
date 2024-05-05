extends NinePatchRect

# Create variables and define type
var normal_speed := 600.0
var max_speed := normal_speed
var velocity := Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction := Vector2(0, 0)

	# Defines the inputs up, down, left and right on the vector 'direction' (split between the X and Y axels)
	direction.x = Input.get_axis("move_left", "move_right")

	# Moves the ship each frame. The speed is constant, it's part of the
	# velocity variable (the velocity combines speed and direction) and
	# multiplying by delta calculates the amount moved in one frame.
	velocity = direction * max_speed
	position += velocity * delta
