extends CharacterBody2D


@export var SPEED = 100.0
@onready var posicion_inicial 


func _ready() -> void:

	
	print(get_parent().global_position)
	posicion_inicial = global_position
	get_parent().global_position = Vector2.ZERO
	global_position = posicion_inicial
	print(get_parent().global_position)
	pass

func _physics_process(delta: float) -> void:
	# Add the gravity.
	
	var direcion = Vector2(Input.get_axis("ui_left","ui_right"),Input.get_axis("ui_up","ui_down"))
	if direcion != Vector2.ZERO:
		velocity = direcion.normalized()*SPEED
		pass
	
	move_and_slide()
	velocity = Vector2.ZERO
	if Input.is_action_just_pressed("disparar"):
		$cannon.disparar()
		
	$cannon.rotar_cannon(get_viewport().get_mouse_position())
