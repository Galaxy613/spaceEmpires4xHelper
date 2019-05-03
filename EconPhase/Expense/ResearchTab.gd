extends Tabs

## Provided Signals

## Exported vars
export var listItem : PackedScene

## Internal Vars
onready var techList : VBoxContainer = $MarginContainer/VBoxContainer/ScrollContainer/TechList

func _ready():
	for techType in Global.Tech.values():
		var item = listItem.instance()
		techList.add_child(item)
		item.setItem(techType)
	Global.connect("newTech_changed", self, "_update")

func _update():
	pass # TODO Update total research cost.