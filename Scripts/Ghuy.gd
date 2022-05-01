extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const D = 68
const A = 65
const W = 87
const S = 83
const SPEED = 5
var velocity = Vector3(0,0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	
	if Input.is_key_pressed(A) and Input.is_key_pressed(D):
		velocity.x = 0
	elif Input.is_key_pressed(D):
		velocity.x = SPEED	
	elif Input.is_key_pressed(A):
		velocity.x = -SPEED
	else:
		velocity.x = lerp(velocity.x, 0, 0.1)
	
	if Input.is_key_pressed(W) and Input.is_key_pressed(S):
		velocity.z = 0
	elif Input.is_key_pressed(W):
		velocity.z = -SPEED
	elif Input.is_key_pressed(S):
		velocity.z = SPEED
	else:
		velocity.z = lerp(velocity.z, 0, 0.1)
		
	move_and_slide(velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
