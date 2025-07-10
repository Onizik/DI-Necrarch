extends Node2D

var one =  false
var two = false


func _on_first_pressed() -> void:
	if !one:
		$text_bg/main_text.text += "
		Я так и думал. На самом деле ты просто решил жмать первую кнопку чтобы проверить, а будет ли тут какой-то текст, не так ли?
		Оказалось, тебя так легко прочитать."
		one = true
	else: if !two:
		$text_bg/main_text.text += "
		Сань, хуй соси! ок?"
		two = true


func _on_second_pressed() -> void:
	if !one:
		$text_bg/main_text.text += "
		Нихуя себе. Не ждал от тебя такого!"
		one = true
	else: if !two:
		$text_bg/main_text.text += "
		Ладно, понял..."
		two = true



func _process(delta: float) -> void:
	if one:
		$text_bg/first/text.text = "Приколист? Я Саню позову!"
		$text_bg/second/text.text = "Может теюе въебать?"
		
	if one and two:
		$text_bg/first.visible = false
		$text_bg/second.visible = false
		$text_bg/end.visible = true
	

func _on_end_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/scenes/main_map.tscn")
