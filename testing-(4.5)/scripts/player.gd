extends CharacterBody2D

@export var attacking = false
@onready var animation = $AnimatedSprite2D

const SPEED = 50.0
const JUMP_VELOCITY = -400.0

func _process(delta):
	if Input.is_action_just_pressed("Attack"):
		attack()

func attack():
	attacking = true
	animation.play("attack")
	await get_tree().create_timer(0.5).timeout
	attacking = false
		

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle attack

		
		
	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left", "Right")
	

	
	if direction:
		velocity.x = direction * SPEED
		$AnimatedSprite2D.scale = Vector2(direction, 1)
		if attacking == false:
			animation.play("run")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if attacking == false and !direction:
			animation.play("idle")
	move_and_slide()
	

	
	
