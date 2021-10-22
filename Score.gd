extends Node


# Declare member variables here. Examples:
# var godot = 3.4
# var jam = "wild"
onready var value = get_node("/root/Globals")
var game_has_ended = 0
var game_audio = true
# Called when the node enters the scene tree for the first time.
func _ready(): #i'm never going to use this am i
	$camanim.play("gamestart")
	pass # Replace with function body.


func _process(delta): #price string updates
	$Label.text = str(value.score)
	$Menus/Upgrades/ScrollContainer/VBoxContainer/lemonbattery/lemonbatteryprice.text = str(value.lemon_battery_price)
	$Menus/Upgrades/ScrollContainer/VBoxContainer/Tree/treeprice.text = str(value.tree_price)
	$Menus/Upgrades/ScrollContainer/VBoxContainer/Upgrade/solarpanelprice.text = str(value.solar_panel_price)
	$Menus/Upgrades/ScrollContainer/VBoxContainer/Watermil/watermilprice.text = str(value.watermil_price)
	$Menus/Upgrades/ScrollContainer/VBoxContainer/Windmil/windmilprice.text = str(value.windmil_price)
	$Menus/Upgrades/ScrollContainer/VBoxContainer/Lunar_Panel/lunarpanelprice.text = str(value.lunar_panel_price)
	$Menus/Upgrades/ScrollContainer/VBoxContainer/Omegapanel/omegaprice.text = str(value.omega_panel_price)
	$Menus/Upgrades/ScrollContainer/VBoxContainer/Death/deathprice.text = str(value.death_price)
	if game_has_ended == 0:
		if value.score >= 10000000:
			game_has_ended = 1
	if game_has_ended == 1: #i need to finish this by the end of the jam
		$Background.visible = false
		$camanim.play("gameend")
		game_has_ended = 2

func _on_Button_pressed():
	$Button/energymanual.play()
	$Button/buttonanims.play("pressed")
	value.score += 1

#upgrade functionality, if there is a better way to this please do tell


func _on_lemonbattery_pressed():
	if value.score >= value.lemon_battery_price:
		value.score -= value.lemon_battery_price
		value.lemon_battreries += 1
		value.lemon_battery_price = stepify(value.lemon_battery_price * 1.3, 1)
		$Menus/Upgrades/upgradesound.play()
		$Menus/Upgrades/ScrollContainer/VBoxContainer/lemonbattery/lemonanim.play("pressed")


func _on_Tree_pressed():
	if value.score >= value.tree_price:
		value.score -= value.tree_price
		value.trees += 1
		value.tree_price = stepify(value.tree_price * 1.3, 1)
		$Menus/Upgrades/upgradesound.play()
		$Menus/Upgrades/ScrollContainer/VBoxContainer/Tree/treeanim.play("pressed")


func _on_scorecheat_pressed():
	value.score += 1000000


func _on_Windmil_pressed():
	if value.score >= value.windmil_price:
		value.score -= value.windmil_price
		value.windmils += 1
		value.windmil_price = stepify(value.windmil_price * 1.3, 1)
		$Menus/Upgrades/upgradesound.play()
		$Menus/Upgrades/ScrollContainer/VBoxContainer/Windmil/windanim.play("pressed")


func _on_Watermil_pressed():
	if value.score >= value.watermil_price:
		value.score -= value.watermil_price
		value.watermils += 1
		value.watermil_price = stepify(value.watermil_price * 1.3, 1)
		$Menus/Upgrades/upgradesound.play()
		$Menus/Upgrades/ScrollContainer/VBoxContainer/Watermil/wateranim.play("pressed")


func _on_Upgrade_pressed():
	if value.score >= value.solar_panel_price:
		value.score -= value.solar_panel_price
		value.solar_panels += 1
		value.solar_panel_price = stepify(value.solar_panel_price * 1.3, 1)
		$Menus/Upgrades/upgradesound.play()
		$Menus/Upgrades/ScrollContainer/VBoxContainer/Upgrade/solaranim.play("pressed")


func _on_Lunar_Panel_pressed():
	if value.score >= value.lunar_panel_price:
		value.score -= value.lunar_panel_price
		value.lunar_panels += 1
		value.lunar_panel_price = stepify(value.lunar_panel_price * 1.3, 1)
		$Menus/Upgrades/upgradesound.play()
		$Menus/Upgrades/ScrollContainer/VBoxContainer/Lunar_Panel/lunaranim.play("pressed")

func _on_Death_pressed():
	if value.score >= value.death_price:
		value.score -= value.death_price
		value.reapers += 1
		value.death_price = stepify(value.death_price * 1.3, 1)
		$Menus/Upgrades/upgradesound.play()
		$Menus/Upgrades/ScrollContainer/VBoxContainer/Death/voidanim.play("pressed")


func _on_Omegapanel_pressed():
	if value.score >= value.omega_panel_price:
		value.score -= value.omega_panel_price
		value.omega_panels += 1
		value.omega_panel_price = stepify(value.omega_panel_price * 1.3, 1)
		$Menus/Upgrades/upgradesound.play()
		$Menus/Upgrades/ScrollContainer/VBoxContainer/Omegapanel/omegaanim.play("pressed")


func _on_camanim_animation_finished(anim_name):
	if anim_name == "gameend":
		$camanim.play("endscreen")
	elif anim_name == "gamestart" and game_has_ended == 0:
		$camanim.play("Objective")



#audio button
var audiotoggled = 0
func _on_audiotoggle_pressed():
	if audiotoggled == 0:
		$BadMusic.stop()
		audiotoggled = 1
	elif audiotoggled == 1:
		$BadMusic.play()
		audiotoggled = 0


func _on_Freeplay_pressed():
	$camanim.play("gamestart")
	pass # Replace with function body.
