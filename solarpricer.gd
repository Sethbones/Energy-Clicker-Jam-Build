extends Label



onready var solarpricing = get_node("/root/Globals")

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.

func _process(delta):
	$Label.text = str(solarpricing.score)
