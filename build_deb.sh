#!/bin/bash

# Clear old pkg content
rm -rf deb/

# Create pkg
mkdir -p deb/DEBIAN/
mkdir -p deb/usr/share/fcitx/skin/
# deb package related file
cp ./control deb/DEBIAN/
# taigi
cp -r ./ithuan deb/usr/share/fcitx/skin/
# copyright
cp ./LICENSE deb/DEBIAN/copyright

# Build pkg
rm -rf build/
mkdir build/
dpkg -b deb/ build/ithuan-fcitx-skin.deb

