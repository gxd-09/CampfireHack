extends Node2D

const SPEED1 = 0
const SPEED2 = -0.5
const SPEED3 = -1
const SPEED4 = -1.5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction := Input.get_axis("Left", "Right")
	if direction:
		$"Base Layer 2".position.x += direction * SPEED2
		$"Base Layer 2b".position.x += direction * SPEED2
		
		$"Base Layer 3".position.x += direction * SPEED3
		$"Base Layer 3b".position.x += direction * SPEED3
		
		$"Base Layer 4".position.x += direction * SPEED4
		$"Base Layer 4b".position.x += direction * SPEED4
