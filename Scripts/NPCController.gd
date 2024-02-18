extends Node

@export var Actor : OverworldActor

func _process(delta):
	Actor.Move(Vector3.ZERO)
