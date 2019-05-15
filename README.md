# xanthia
![Screenshot_2](/screenshots/screenshot1.jpg)

A notification system for MacOS.

## Installation
Install [Übersicht](http://tracesof.net/uebersicht/) and then place this repository in your Übersicht directory:
```
git clone https://github.com/zzzeyez/Xanthia.git "$HOME/Library/Application Support/Übersicht/widgets/xanthia"
```

## Usage
To trigger the notifications, use the included `notify-send`:
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
Images can be displayed with the `notify-send` -i flag.  This requires the installation of `imagemagick`:
```
brew install imagemagick
```

If `pecan` is installed, then `xanthia` will pull it's style from `pecan`'s `style.css` file.

## Notes

`notify-send` uses a "Ü" character and this causes issues on some computers.  If `notify-send` does not restart `Übersicht` then try uncommenting line #26, and commenting line #27 on `notify-send`
