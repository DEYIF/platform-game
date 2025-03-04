extends Node

func change_scene(path: String) -> void:
	var tree := get_tree()
	
	tree.change_scene_to_file(path)
	await tree.tree_changed
