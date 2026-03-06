extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = text.replace("{VERSION}", ProjectSettings.get_setting("application/config/version"))
