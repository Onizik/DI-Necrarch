extends Node2D

func _process(delta: float) -> void:
	$bg/fear/text.text = str($"/root/Global".fear)
	$bg/influence/text.text = str($"/root/Global".influence)
	$bg/insight/text.text = str($"/root/Global".insight)
	$bg/glory/text.text = str($"/root/Global".glory)
