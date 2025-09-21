extends Node2D
class_name Player_Spinner

@onready var subRoot = $SubRoot
@onready var anchor = $Parent/Anchor
@onready var body = $Parent/Anchor/Body
@onready var hitNodes:HBoxContainer = $SubRoot/Anchor/HitNodesino
@onready var hitNodeLeft:TextureRect = $SubRoot/Anchor/HitNodes/HitNodeLeft
@onready var hitNodeRight:TextureRect = $SubRoot/Anchor/HitNodes/HitNodeRight
@onready var outerRing:Node2D = $SubRoot/OuterRing
@onready var hitRing:Node2D = $SubRoot/HitRing

@export var bpm:float = 120: 
	set(value):
		bpm = value
		on_bpm_changed(value)

var secondsPerBeat:float
var beatsPerSecond:float
var rotationRadiansPerSecond:float

func _enter_tree() -> void:
	pass

func _ready() -> void:
	pass

func _input(_event: InputEvent) -> void:
	pass

func _process(_delta: float) -> void:
	pass

func _exit_tree() -> void:
	pass

# --- CUSTOM FUNCTIONS ---
func on_bpm_changed(value):
	secondsPerBeat = 60/value
	beatsPerSecond = value/60
	rotationRadiansPerSecond = TAU/secondsPerBeat
