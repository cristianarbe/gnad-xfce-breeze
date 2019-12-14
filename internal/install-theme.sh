#!/bin/env sh

installtheme() {
  if test ! -d ~/.themes/breeze; then
    mkdir ~/.themes/breeze -p
    git clone https://github.com/ajyotirmay/breeze-xfce.git ~/.themes/breeze
  fi

  changewmtheme breeze
  changetheme breeze

}
