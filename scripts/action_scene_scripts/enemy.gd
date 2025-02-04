extends Node2D

@export var enemy_health_bar: ProgressBar
@export var enemy_dictionary: Resource
@export var enemy_sprite: Sprite2D

# Duration of the shake in seconds.
var shake_duration := 0.5
# Maximum intensity of the shake.
var shake_intensity := 10.0
# Timer for the shake effect.
var shake_timer := 0.0
# Store the original position of the sprite.
var original_position := Vector2.ZERO

func _ready() -> void:
	# Seed the random number generator.
	randomize()
	original_position = position
	spawn()

func spawn() -> void:
	var monster_data = enemy_dictionary.get_monster(randi_range(0, enemy_dictionary.get_size() - 1))
	enemy_sprite.texture = monster_data.sprite
	enemy_health_bar.value = monster_data.health
	
	
# Call this function to trigger the shake effect.
func hit(damage: int = 0,intensity: float = 10.0, duration: float = 0.5) -> void:
	enemy_health_bar.value = enemy_health_bar.value - damage
	shake_timer = duration
	shake_intensity = intensity

func _process(delta: float) -> void:
	if shake_timer > 0:
		shake_timer -= delta
		
		# Calculate the shake intensity, decreasing over time.
		var current_intensity = shake_intensity * (shake_timer / shake_duration)
		
		# Generate a random offset within the current intensity.
		var offset = Vector2(randf_range(-1, 1), randf_range(-1, 1)) * current_intensity
		position = original_position + offset
	else:
		# Reset to the original position when not shaking.
		position = original_position
		shake_duration = 0.5
		shake_intensity = 10.0
		shake_timer = 0.0
