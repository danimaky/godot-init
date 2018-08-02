extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	
	self.get_node('left').get_node('Sprite').set_texture(StreamTexture.new('res://left_pallete.png'))
	self.get_node('right').get_node('Sprite').set_texture(StreamTexture.new('res://left_pallete.png'))
	self.get_node('ball').get_node('Sprite').set_texture(StreamTexture.new('res://left_pallete.png'))

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
