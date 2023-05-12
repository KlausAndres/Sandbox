extends Control

var pictures : Array = [preload("res://assets/photos/Bild1.JPG"), preload("res://assets/photos/Bild2.JPG"), preload("res://assets/photos/Bild3.JPG"), preload("res://assets/photos/Bild4.JPG")]
var pic_index : int = 0

func _ready():
	_update_picture()
	
func _update_picture():
	$MarginContainer/VBoxContainer/Content/Picture.set_texture(pictures[pic_index % len(pictures)])
	


func _on_ButtonLeft_pressed():
	pic_index -= 1
	_update_picture()


func _on_ButtonRight_pressed():
	pic_index += 1
	_update_picture()
