extends Area2D
const BALL_SPEED = 100
const DIRECTIONS = [-1, 1]
var direction = null
var speed = BALL_SPEED
onready var initial_pos = self.position


func  _ready():
	randomize()
	direction = Vector2(DIRECTIONS[randi() % 2], 0)


func reset():
	position = initial_pos
	speed = BALL_SPEED
	self._ready()

func _process(delta):
	# Called every frame. Delta is time since last frame.
	position += direction * speed * delta