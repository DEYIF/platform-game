extends Control
@onready var new_game: Button = $V/NewGame
@onready var v: VBoxContainer = $V

func _ready() -> void:
	new_game.grab_focus()
	for button: Button in v.get_children():
		button.mouse_entered.connect(button.grab_focus)


func _on_new_game_pressed() -> void:
	GameLoader.change_scene("res://Scenes/Game.tscn")


func _on_load_game_pressed() -> void:
	pass


func _on_exit_game_pressed() -> void:
	get_tree().quit()
