# graphical/display tweaking
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
xset +dpms +fp /usr/share/fonts/local,/usr/share/fonts/artwiz-fonts
xscreensaver -no-splash &
nvidia-settings -l
wmname LG3D

# input tweaking
setxkbmap -option terminate:ctrl_alt_bksp
xset r rate 220 45
xsetroot -cursor_name left_ptr

# the lack of terminals here is intentional. see ~/bin/startdwm
{ sleep 1; chromium; } &

exec ck-launch-session dbus-launch --sh-syntax --exit-with-session ~/bin/startdwm
if [[ ! -e /dev/input/by-id/usb-Topre_Corporation_HHKB_Professional-event-kbd ]]; then
  xmodmap ~/.xmodmaprc
fi

# autostart
{ sleep 1; chromium; } & # delay prevents start prior to xcompmgr
urxvtd -q -o -f
urxvtc -name tmux -geometry 122x77 -e tmux -L main attach
urxvtc -name htop -e htop
urxvtc -name werk

#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1

# i'm running a reparenting WM, honest!
wmname LG3D

nvidia-settings -l

exec ~/bin/startdwm


