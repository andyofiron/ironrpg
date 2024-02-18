extends CharacterBody3D
class_name OverworldActor

@export var gravityEnabled : bool = true
@export var speed : int = 5
var gravity = 0
@export var gForce = -.02

func Move(dir:Vector3):
	dir = (dir * speed) + Vector3(0,gravity,0)
	if not is_on_floor():
		gravity += gForce
	else:
		gravity = 0
	velocity = dir
	move_and_slide()
	pass
