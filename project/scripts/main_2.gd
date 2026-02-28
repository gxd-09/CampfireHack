extends Node2D

var player_current_attack = false
var player_health = 100
var goblin_attacking = false
var is_mining = false

@onready var kill_count = 0;

func _process(_delta):
	if kill_count >= 5:
		get_tree().change_scene_to_file("res://scenes/winscreen.tscn")
		
		
	
 
