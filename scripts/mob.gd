extends RigidBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _ready() -> void:
	var mob_types := Array(animated_sprite_2d.sprite_frames.get_animation_names())
	animated_sprite_2d.animation = mob_types.pick_random()
	animated_sprite_2d.play()
	

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
