#!/bin/env sh

installicons() {

  if test ! -d ~/.icons/breeze-extra-gnome; then
    if test ! -d ~/.icons/; then
      mkdir -p ~/.icons
    fi
    wget https://dllb2.pling.com/api/files/download/id/1576318427/s/d123fd19bb2150a808653dc78452e92bb7eccc1ed30d8d39eae2e65f011783c9c822a0ff5fa77db6904dfa9c1000cbda5c6886199b4fe140c83fce41c9271116/t/1576338020/c/d123fd19bb2150a808653dc78452e92bb7eccc1ed30d8d39eae2e65f011783c9c822a0ff5fa77db6904dfa9c1000cbda5c6886199b4fe140c83fce41c9271116/lt/download/breeze-extra-gnome.tar.xz -O ~/.icons/breeze.tar.xz
    cd ~/.icons || exit
    extract breeze.tar.xz
  fi
  changeicon "breeze-extra-gnome"
}
