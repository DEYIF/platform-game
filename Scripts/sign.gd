extends StaticBody2D

@export var textbefore: String = ""
@export var textafter: String = ""
@onready var interactable: Area2D = $Interactable
@onready var sprite_2d: Sprite2D = $Sprite2D

func _ready() -> void:
	interactable.interact_name = textbefore #交互前显示before
	interactable.interact = _on_interact

func _on_interact():
	#if interactable.is_interactable == true: #做唯一打开检测
		#interactable.is_interactable = false
	interactable.interact_name = textafter #textafter是null则仍会显示before
	print(textafter)
