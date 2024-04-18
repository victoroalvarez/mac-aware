# ~/.xinitrc
urxvtd -o -q -f

#[ -f $HOME/.config/X11/.Xresources ] && xrdb -merge -I $HOME ~/.config/X11/.Xresources

xrdb -merge ~/.Xresources

# invoke global X session script
#. /etc/X11/Xsession

exec i3
