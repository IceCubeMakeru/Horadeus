extends RigidBody



export var speed = 2
var movement = Vector3()


func _integrate_forces(state):
	movement = Vector3(0,0,0)
	
	if (Input.is_action_pressed("ui_right")):
		movement.x = speed
	if (Input.is_action_pressed("ui_left")):
		movement.x = -speed
	if (Input.is_action_pressed("ui_up")):
		movement.z = -speed
	if (Input.is_action_pressed("ui_down")):
		movement.z = speed
	
	
	
	add_force(Vector3(movement.x * speed, 0, movement.z * speed), Vector3(0,0,0))




