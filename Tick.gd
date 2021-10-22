extends Timer


onready var ticking = get_node("/root/Globals")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Ticks_timeout():
	for n in ticking.lemon_battreries: #price - 10
		ticking.score += 1
	for n in ticking.trees: #price - 100
		ticking.score += 10
	for n in ticking.windmils: #price - 1000
		ticking.score += 100
	for n in ticking.watermils: #price - 5000
		ticking.score += 250
	for n in ticking.solar_panels: #price - 13,000
		ticking.score += 500
	for n in ticking.lunar_panels: #price - 25,000
		ticking.score += 750
	for n in ticking.omega_panels: #price - 250,000
		ticking.score += 10000
	for n in ticking.reapers: #price - 10,000,000
		ticking.score += 1000000

