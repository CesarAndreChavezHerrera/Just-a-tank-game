extends CharacterBody2D

@export_category("Setting bala")
@export var SPEED = 300.0
@export var direction = Vector2(1,1)


func _physics_process(delta: float) -> void:
	velocity = direction.normalized() * SPEED
	move_and_slide()

func _on_damage_body_entered(body: Node2D) -> void:
	print(body.get_class())
	if body.get_class() == "StaticBody2D":
		eliminar()
		pass
	
	
	pass # Replace with function body.

func apuntar(dir):
	direction = global_position.direction_to(dir)
	pass


func _on_timer_timeout() -> void:
	eliminar()
	pass # Replace with function body.


func eliminar():
	queue_free()
	#print("bala eleminar")
	pass
