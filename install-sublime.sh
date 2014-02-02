#!/bin/sh

# Define the current install directory (default: /usr/local/bin)
LOC_BIN=/usr/local/bin

# Define where the configurations are stored (default: ~/.config)
CFG_DIR=/home/$SUDO_USER/.config

# Define where the .desktop file is stored
DSK_DIR=/usr/local/share/applications

# Install the binaries, and set the owner
echo "* Installing the binaries to: $LOC_BIN"
mkdir -p bin
cp -rf 'bin/Sublime Text 2' $LOC_BIN
cp -rf 'bin/Sublime Text 3' $LOC_BIN
chown -R $SUDO_USER "$LOC_BIN/Sublime Text 2" "$LOC_BIN/Sublime Text 3"

# Create symbolic links in $LOC_BIN
echo "* Creating symbolic links in: $LOC_BIN"
ln -sf "$LOC_BIN/Sublime Text 2/sublime_text" "$LOC_BIN/sublime-text-2"
ln -sf "$LOC_BIN/Sublime Text 3/sublime_text" "$LOC_BIN/sublime-text-3"

# Install the config files, and set the owner
echo "* Installing configs to: $CFG_DIR"
mkdir -p config
cp -rf config/sublime-text-2 $CFG_DIR
cp -rf config/sublime-text-3 $CFG_DIR
chown -R $SUDO_USER $CFG_DIR/sublime-text-2 $CFG_DIR/sublime-text-3

# Install the .desktop files
echo "* Installing the .desktop files to: $DSK_DIR"
mkdir -p desktop
cp -f 'desktop/sublime-text-2.desktop' "$DSK_DIR/sublime-text-2.desktop"
cp -f 'desktop/sublime-text-3.desktop' "$DSK_DIR/sublime-text-3.desktop"
