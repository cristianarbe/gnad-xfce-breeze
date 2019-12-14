#!/bin/env sh

installfonts() {
    if test ! -d ~/.fonts; then
        mkdir -p ~/.fonts
    fi

    if test ! -f ~/.fonts/NotoSans-Regular.ttf; then
        wget https://fonts.google.com/download?family=Noto%20Sans -O ~/.fonts/noto.zip
        cd ~/.fonts || exit
        extract noto.zip
    fi
    changefont "Noto Sans 11"

}
