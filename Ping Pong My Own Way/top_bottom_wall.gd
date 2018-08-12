extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	connect("area_entered", self, "_on_area_entered")

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _on_area_entered( area ):
	if area.get_name() == "ball":
		area.direction = Vector2(area.direction.x, area.direction.y*-1).normalized()
