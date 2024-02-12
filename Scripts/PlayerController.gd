extends Node3D
class_name PlayerController

@export var Actor : OverworldActor


# Called when the node enters the scene tree for the first time.s
func _ready():
	#Cam.SetTarget(Actor)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var x = Input.get_axis("ui_left","ui_right");
	var y = Input.get_axis("ui_up","ui_down");
	var dir = Vector3(x,0,y)
	Actor.Move(dir);
