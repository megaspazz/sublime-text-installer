#!/bin/sh

# Define the current install directory (default: /usr/local/bin)
LOC_BIN=/usr/local/bin

# Define where the configurations are stored (default: ~/.config)
CFG_DIR=~/.config

# Define where the .desktop file is stored
DSK_DIR=/usr/local/share/applications

# Get the binaries
echo "* Getting the binaries from: $LOC_BIN"
mkdir -p bin
cp -rf "$LOC_BIN/Sublime Text 2" 'bin/Sublime Text 2'
cp -rf "$LOC_BIN/Sublime Text 3" 'bin/Sublime Text 3'

# Get the config files
echo "* Getting configs from: $CFG_DIR"
mkdir -p config
cp -rf "$CFG_DIR/sublime-text-2" config/sublime-text-2
cp -rf "$CFG_DIR/sublime-text-3" config/sublime-text-3

# Get the .desktop files
echo "* Getting the .desktop files from: $DSK_DIR"
mkdir -p desktop
cp -f "$DSK_DIR/sublime-text-2.desktop" 'desktop/sublime-text-2.desktop'
cp -f "$DSK_DIR/sublime-text-3.desktop" 'desktop/sublime-text-3.desktop'
