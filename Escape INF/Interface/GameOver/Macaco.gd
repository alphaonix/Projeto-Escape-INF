extends Node2D

export (String, FILE, "*.tscn") var next_scene

func _ready():
	AudioPlayer.play_audio(preload("res://Audio/SFX/game-over.mp3"), "Music")
	yield(get_tree().create_timer(5), "timeout")
	
	$SceneTransitionLocal/AnimationPlayer.play("Out")
	yield($SceneTransitionLocal/AnimationPlayer, "animation_finished")
	
	var _a = get_tree().change_scene(next_scene)
