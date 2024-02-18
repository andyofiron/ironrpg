extends Light3D

var c = 10

func _process(delta):
	var a = randi_range(0,300)
	if a <= c:
		visible = false
		c += 10
		if c > 200:
			c = 10
	else:
		c = 1
		visible = true
