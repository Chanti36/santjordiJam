extends Node2D

var	index

var pingo


func _ready():
	pingo = [get_node("anim/Sprite2D/AnimationPlayer"), get_node("anim/Sprite2D2/AnimationPlayer"), get_node("anim/Sprite2D3/AnimationPlayer")]
	index = 0
	#sprite1.play("hide")
	pass # Replace with function body.


func _physics_process(delta):
	if Input.is_action_just_pressed("left_click"):
		print(index)
		if (index < pingo.size()-1):
			pingo[index].play("hide")
		else:
			get_tree().change_scene_to_file("res://scenes/juego.tscn")
		index +=1
	pass
