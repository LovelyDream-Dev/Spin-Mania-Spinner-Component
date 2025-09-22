extends Node2D
class_name Visual_Lazer

@onready var dashes:ColorRect = $Dashes

# --- Exported Colors ---
@export_category("Colors")
@export var dashColor:Color
@export var beamColor:Color

# --- Exported Values ---
@export_category("Values")
@export var dashLength:float = 10.0
@export var gapLength:float = 10.0
@export var dashWidth:float = 10.0
@export var beamWidth:float = 10.0

func _process(_delta: float) -> void:
	var dashesMaterial:ShaderMaterial = dashes.material
	dashesMaterial.set_shader_parameter("dashLength", dashLength)
	dashesMaterial.set_shader_parameter("gapLength", gapLength)
	dashesMaterial.set_shader_parameter("lineColor", dashColor)
	dashes.size.y = dashWidth
	
