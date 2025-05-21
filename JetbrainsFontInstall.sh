#!/bin/sh
JET_BRAINS_FONT_PATH="$HOME/.local/share/fonts"
JET_BRAINS_DL_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip"

mkdir -p $JET_BRAINS_FONT_PATH

curl -L -O "$JET_BRAINS_DL_URL"

unzip "JetBrainsMono.zip" -d $JET_BRAINS_FONT_PATH

fc-cache -f -v

fc-list | grep "JetBrains"

rm "JetBrainsMono.zip"
