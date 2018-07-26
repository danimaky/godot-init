extends Node
# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var accum = 0
var fps = Label.new()
func _ready():
	var magicone = DynamicFont.new()
	magicone.set_font_data(DynamicFontData.new())
	magicone.get_font_data().set_font_path("res://SIXTY.TTF")
	#magicone.get_fallback(0).get_hinting()
	magicone.set_size(32)
	magicone.update_changes()
	get_node("result").add_font_override("font", magicone)
	print(get_node("result").has_font("font"))
	magicone.update_changes()
	#var font = Font.new()
	#get_node("result").get_font("font").set_height(900)
	#get_node("result").get_font("font").update_changes()
	print(get_node("result"))
#	print(self.is_pressed())
	# Called when the node is added to the scene for the first time.
	# Initialization here
	add_child(fps)
	#print(get_node("number1").show())
	get_node("button").connect("pressed", self, "_on_button_presed")
	pass

func _on_button_presed():
	
	var r = int(get_node("number1").get_text()) + int(get_node("number2").get_text())
	get_node("result").set_text(str(r))
	pass

func _process(delta):
	if get_viewport().get_size().x != self.margin_right or get_viewport().get_size().y != self.margin_bottom:
		self.margin_right = get_viewport().get_size().x
		self.margin_bottom = get_viewport().get_size().y
	accum += delta
	fps.set_text(String(Engine.get_frames_per_second()))
	#if self.is_pressed():
		#print(self.get_path())
		#print(get_node("/root/Panel/result").set_text("Pruebita"))
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	pass
	
func resizecomponents():
	for node in get_children():
		