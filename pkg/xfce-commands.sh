#!/bin/env sh

changewmtheme() {
  xfconf-query -c xfwm4 -p /general/theme -s "$1"
}

changetheme() {
  xfconf-query -c xsettings -p /Net/ThemeName -s "$1"
}

changeicon() {
  xfconf-query -c xsettings -p /Net/IconThemeName -s "$1"
}

changepanel() {
  cp "$1" ~/.config/xfce4/xfconf/xfce-perchannel-xml
}

changefont() {
  xfconf-query -c xfwm4 -p /general/title_font -s "$1"
  xfconf-query -c xsettings -p /Gtk/FontName -s "$1"
}
