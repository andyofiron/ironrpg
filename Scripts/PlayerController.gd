extends Node3D
class_name PlayerController

@export var Actor : OverworldActor
@export var Animator : AnimationTree
@export var lastdir = Vector2(0,1)
@export var interactionSphere : Area3D

# Called when the node enters the scene tree for the first time.s
func _ready():
	#Cam.SetTarget(Actor)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var x = Input.get_axis("ui_left","ui_right");
	var y = Input.get_axis("ui_up","ui_down");
	var dir = Vector3(x,0,y).normalized()
	var animdir = Vector2(x,-y)
	if animdir.length() >= .5:
		lastdir = animdir 
	interactionSphere.position = Vector3(lastdir.x,0,-lastdir.y)
	Animator.set('parameters/conditions/isMoving',animdir.length() >= .2);
	Animator.set('parameters/conditions/idle',not (animdir.length() >= .2));
	Animator.set("parameters/Walk/blend_position",lastdir)
	Animator.set("parameters/BlendSpace2D/blend_position",lastdir)
	Actor.Move(dir);
