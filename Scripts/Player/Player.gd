extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
		var input_vector_x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		var input_vector_y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
		
		self.velocity = Vector2(input_vector_x, input_vector_y)*delta*7500
		move_and_slide()
