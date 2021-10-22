extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var pressed = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass 


func _on_Upgrades_pressed():
	if pressed == 0:
		$menuanims.play("Pressed")
		$Upgrades/upgradeslabel.visible = false
		pressed = 1
	elif pressed == 1:
		$menuanims.play("Retract")
		$Upgrades/upgradeslabel.visible = true
		pressed = 0


func _on_Button_pressed():
	pass # Replace with function body.
