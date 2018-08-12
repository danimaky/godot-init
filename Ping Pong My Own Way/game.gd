
extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	var texture = StreamTexture.new()
	var shape = RectangleShape2D.new()
	shape.set_extents(Vector2(4, 16))
	var viewport = self.get_viewport()
	var distance = 50
	texture.load('res://.import/left_pallete.png-bc33611074a0f886142e37c77bd2545a.stex')
	self.get_node('left').get_node('Sprite').set_texture(texture)
	self.get_node('left').set_position(Vector2(distance, viewport.get_size().y/2))
	$left.get_node("CollisionShape2D").set_shape(shape)
	shape = RectangleShape2D.new()
	shape.set_extents(Vector2(4, 16))
	texture = StreamTexture.new()
	texture.load('res://.import/right_pallete.png-fc6e4a6a7c8197834656482b94708e47.stex')
	self.get_node('right').get_node('Sprite').set_texture(texture)
	self.get_node('right').set_position(Vector2(viewport.get_size().x-distance, viewport.get_size().y/2))
	$right.get_node("CollisionShape2D").set_shape(shape)
	shape = RectangleShape2D.new()
	shape.set_extents(Vector2(4, 4))
	texture = StreamTexture.new()
	texture.load('res://.import/ball.png-9a4ca347acb7532f6ae347744a6b04f7.stex')
	self.get_node('ball').get_node('Sprite').set_texture(texture)
	self.get_node('ball').set_position(Vector2(viewport.get_size().x/2, viewport.get_size().y/2))
	$ball.get_node("CollisionShape2D").set_shape(shape)
	shape = RectangleShape2D.new()
	shape.set_extents(Vector2(viewport.get_size().x, 10))
	$top_wall.get_node("CollisionShape2D").set_position(Vector2(viewport.get_size().x/2,-10))
	$top_wall/CollisionShape2D.set_shape(shape)
	shape = RectangleShape2D.new()
	shape.set_extents(Vector2(viewport.get_size().x, 10))
	$bottom_wall.get_node("CollisionShape2D").set_position(Vector2(viewport.get_size().x/2,viewport.get_size().y+10))
	$bottom_wall/CollisionShape2D.set_shape(shape)
	

func _process(delta):
	pass
	#print($left.get_node("CollisionShape2D").get_transform().get_scale().y)


func _on_right_area_entered(area):
	pass # replace with function body
