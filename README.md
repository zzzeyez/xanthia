# Xanthia
![Screenshot 1](/screenshots/1.gif)

Xanthia is a notification system for MacOS that uses Ubersicht.  By default it is styled to match MacOS' default appearance.  If you have `Pecan` installed then it will pull style from that instead.

Here is without `Pecan`:
![Screenshot_2](/screenshots/screenshot1.jpg)

And here is with:
![Screenshot_3](/screenshots/screenshot2.jpg)

Xanthia includes a script to make notifications appear.  Use the included `notify-send` like so:

```
./notify-send "New message"
```

So, assuming `notify-send` is in your path, you can enter this into `Weechat` for notifications:

```
/set trigger.trigger.beep.command "/exec notify-send '${tg_tag_nick}: ${tg_message_nocolor}'"
```

