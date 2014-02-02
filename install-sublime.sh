#!/bin/sh

# Define the current install directory (default: /usr/local/bin)
LOC_BIN=/usr/local/bin

# Define where the configurations are stored (default: ~/.config)
CFG_DIR=~/.config

# Install the binaries
echo "* Installing the binaries to: $LOC_BIN"
mkdir -p bin
cp -rf 'bin/Sublime Text 2' "$LOC_BIN/Sublime Text 3"
cp -rf 'bin/Sublime Text 3' "$LOC_BIN/Sublime Text 3"

# Create symbolic links in $LOC_BIN
echo "* Creating symbolic links in: $LOC_BIN"
ln -sf "$LOC_BIN/Sublime Text 2/sublime_text" "$LOC_BIN/sublime-text-2"
ln -sf "$LOC_BIN/Sublime Text 3/sublime_text" "$LOC_BIN/sublime-text-3"

# Get the config files
echo "* Installing configs to: $CFG_DIR"
mkdir -p config
cp -rf config/sublime-text-2 "$CFG_DIR/sublime-text-2"
cp -rf config/sublime-text-3 "$CFG_DIR/sublime-text-3"
