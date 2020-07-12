extends TextureRect

export(Resource) var spell

onready var cursor = $Cursor
onready var text   = $Label

var is_next : bool = false

func _ready():
	
	texture = spell.profile
	cursor.texture = preload("res://spritesheet/selector.png")
	text.text = spell.name
	
func _process(delta):	
	cursor.visible = is_next
	text.visible = is_next
