extends Node2D

@export var box_scene: String = "res://Scripts/box.tscn"

func _ready():
	save_loot("Лут из сцены 3")
	change_to_box_scene()

func save_loot(item: String):
	var file = FileAccess.open("user://loot.save", FileAccess.WRITE)
	if file:
		file.store_var(item)
		file.close()
		print("Лут сохранен: ", item)
	else:
		print("Ошибка при сохранении лута!")

func change_to_box_scene():
	print("Переход в сцену: ", box_scene)
	get_tree().change_scene_to_file(box_scene)
