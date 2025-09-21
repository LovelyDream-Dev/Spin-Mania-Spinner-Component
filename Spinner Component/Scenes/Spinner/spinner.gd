extends Node2D
class_name Player_Spinner

@onready var subRoot:Node2D = $SubRoot 
@onready var anchor:Node2D = $SubRoot/Anchor
@onready var body:Node2D = $SubRoot/Anchor/Body
@onready var hitNodes:HBoxContainer = $SubRoot/Anchor/HitNodes
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
var rotationRadiansPerBeat:float
var rotationsPerBeat:float = 0.25

func _enter_tree() -> void:
	pass

func _ready() -> void:
	secondsPerBeat = 60/bpm
	beatsPerSecond = bpm/60
	rotationRadiansPerBeat = TAU * rotationsPerBeat

func _input(_event: InputEvent) -> void:
	pass

func _process(delta: float) -> void:
	anchor.rotation += rotationRadiansPerBeat  * (delta / secondsPerBeat)

func _exit_tree() -> void:
	pass

# --- CUSTOM FUNCTIONS ---
func on_bpm_changed(value):
	secondsPerBeat = 60/value
	beatsPerSecond = value/60
