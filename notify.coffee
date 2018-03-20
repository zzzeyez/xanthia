command: "cat /tmp/notify"

refreshFrequency: false

render: (output) ->
	"<div class='screen'><div class='notify'>#{output}</div></div>"

