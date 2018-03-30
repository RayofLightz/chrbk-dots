#!/bin/bash

# setup stuff
# change into script dir
cd $(dirname $0)

# install mate + xmonad and misc tools
sudo apt-get install mate xmonad libghc-xmonad-dev libghc-xmonad-contrib-dev suckless-tools rofi chromium zathura
echo "making xmonad config file"
mkdir ~/.xmonad/
cp xmonad/xmonad.hs ~/.xmonad/

echo "setting xmonad as mates wm"
if [ ! -d "~/.local/share/applications" ]; then
    mkdir ~/.local/share/applications
fi
cp /usr/share/applications/xmonad.desktop ~/.local/share/applications/xmonad.desktop

echo 'X-MATE-AutoRestart=true' >> ~/.local/share/applications/xmonad.desktop

gsettings set org.mate.session.required-components windowmanager xmonad
gsettings set org.mate.session required-components-list "['windowmanager','panel']"
echo "logout and logback in to enjoy :)"
