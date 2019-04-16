# xanthia
`xanthia` is a notification system for MacOS.  By default it is styled to match MacOS' default appearance.  If you have `pecan` installed then it will pull style from that instead.

![Screenshot 1](/screenshots/1.gif)

Here is without `pecan`:
![Screenshot_2](/screenshots/screenshot1.jpg)

And here is with:
![Screenshot_3](/screenshots/screenshot2.jpg)

## Installation
Dependencies: [Übersicht](http://tracesof.net/uebersicht/) and `imagemagick`.

Clone this repo to the location of your Übersicht widgets and install `imagemagick`
```
brew install imagemagick
git clone https://github.com/zzzeyez/Xanthia.git "$HOME/Library/Application Support/Übersicht/widgets/xanthia"
```

To trigger the notifications, use the included `notify-send`.  I suggest placing it in your $PATH so that you don't have to type out it's full location:

```
ln -s "$HOME/Library/Application Support/Übersicht/widgets/Pecan/pecan-style" "/usr/local/bin"
```

## Usage
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

The other use-case scenarios are up to you.
