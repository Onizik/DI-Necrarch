extends Node2D


func _on_first_pressed() -> void:
	$main_map/first/menu_map.visible = true
	$main_map/second/menu_map.visible = false



func _on_second_pressed() -> void:
	$main_map/first/menu_map.visible = false
	$main_map/second/menu_map.visible = true
