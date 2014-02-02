#!/bin/sh

# Define the current install directory (default: /usr/local/bin)
LOC_BIN=/usr/local/bin

# Define where the configurations are stored (default: ~/.config)
CFG_DIR=/home/$SUDO_USER/.config

# Define where the .desktop file is stored
DSK_DIR=/usr/local/share/applications

# Remove binaries
rm -rf "$LOC_BIN/Sublime Text 2" "$LOC_BIN/Sublime Text 3"

# Remove links
rm -f "$LOC_BIN/sublime-text-2" "$LOC_BIN/sublime-text-3"

# Remove configs
rm -rf "$CFG_DIR/sublime-text-2" "$CFG_DIR/sublime-text-3"

# Remove .desktop files
rm -f "$DSK_DIR/sublime-text-2.desktop" "$DSK_DIR/sublime-text-3.desktop"
