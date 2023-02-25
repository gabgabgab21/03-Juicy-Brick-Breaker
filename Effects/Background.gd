extends ColorRect


var c = 0
var colors = [
	Color8(0,0,0),
	Color8(255,245,245),
	Color8(255,227,227),
	Color8(255,201,201),
	Color8(255,168,168),
	Color8(255,135,135)
	]


func _ready():
	update_color()
	
func update_color():
	$Tween.interpolate_property(self, "color", color, colors[c], 2.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
	

func _on_Tween_tween_all_completed():
	c = wrapi(c+1, 0, colors.size())
	update_color()
