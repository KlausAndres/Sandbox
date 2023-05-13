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


func _on_ButtonDownload_pressed():
	# var image = Image.new()
	var image = Image.load_from_file("res://assets/download/Bild1.JPG")
	var buf = image.save_jpg_to_buffer()
	
	
#	var image = Image.load_from_path(preload("res://assets/download/Bild1.JPG"))
#	var buf = image.save_jpg_to_buffer()
#	JavaScript.download_buffer(buf, 'NewName.jpg')
