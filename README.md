# xanthia
![Screenshot_2](/screenshots/screenshot1.jpg)

A notification system for MacOS.

## Installation
+ Install [Übersicht](http://tracesof.net/uebersicht/)
+ Place this folder in `~/Library/Application Support/Übersicht/widgets`
+ Install `notify-send` by typing this into a terminal:

```
ln -s "${HOME}Library/Application Support/Übersicht/widgets/xanthia/notify-send" "/usr/local/bin/notify-send"
```



## Usage
You can now type `notify-send "message"` into a terminal to get notifications.

```
xanthia: a notification system for macOS

Usage: notify-send [option] [argument]
       [-i 'path/to/image'] [-m 'message']
       
Example: notify-send -m "file saved"
         notify-send -i "~/downloads/img.jpg" -m "img.jpg saved"
         notify-send -i "~/downloads/img.jpg"
         notify-send "upload finished"
```


So, for example, you can enter this into `weechat` for notifications:
```
/set trigger.trigger.beep.command /exec -norc notify-send "${tg_tag_nick}: ${tg_message_nocolor}"
```


Or place this in your `ncmpcpp` config for song-change notifications:
```
execute_on_song_change = "notify-send "♫ $(mpc current)""
```


Or take a screenshot and then display it as a notification:
```
screencapture -i "~/downloads/image.png" && notify-send -i "~/downloads/image.png"
```



## Optional Features
Images can be displayed with the `notify-send` -i flag.  By default this will only work with PNG images.  You can install `imagemagick` to use all other file types.
```
brew install imagemagick
```

If [pecan](https://github.com/zzzeyez/pecan) is installed, then `xanthia` will pull it's style from `pecan`'s `style.css` file.
