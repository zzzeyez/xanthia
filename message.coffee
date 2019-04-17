command: "head -1 xanthia/.cache/message"

refreshFrequency: false

render: (output) ->
	"<div class='screen'><div class='xanthiamessage'>#{output}</div></div>"
