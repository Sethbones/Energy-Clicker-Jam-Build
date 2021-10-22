extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var labelscore = get_node("/root/Globals")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = str(labelscore.score)
	pass
