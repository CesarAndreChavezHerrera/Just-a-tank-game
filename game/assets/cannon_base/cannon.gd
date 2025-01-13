extends Marker2D


# Called when the node enters the scene tree for the first time.
@export var bala : PackedScene 
@export var raiz :NodePath
var padre 
func _ready() -> void:
	padre = get_node(raiz)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func rotar_cannon(punto:Vector2):
	look_at(punto)
	pass

func disparar():
	var bala_instance = bala.instantiate()
	bala_instance.global_position = $punta.global_position
	bala_instance.apuntar($direction.global_position)
	padre.add_child(bala_instance)
	pass
