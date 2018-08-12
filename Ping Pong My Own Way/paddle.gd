extends Area2D
export var ball_dir = 1

const MOVE_SPEED = 100
# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func _ready():
	connect("area_entered", self, "_on_area_entered")
func _process(delta):
	var which = get_name()
	if Input.is_action_pressed(which+"_up") and position.y > 0:
		position.y -= MOVE_SPEED * delta
	if Input.is_action_pressed(which+"_down") and position.y < get_viewport().size.y:
		position.y += MOVE_SPEED * delta

func _on_area_entered( area ):
	print("entro")
	if area.get_name() == "ball":
		randomize()
		area.direction = Vector2(area.direction.x*-1, randf() * 2 - 1).normalized()