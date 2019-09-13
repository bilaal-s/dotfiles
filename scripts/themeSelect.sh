#!/bin/sh

selectedTheme=$(sxiv -otb ~/.config/wpg/wallpapers)
selectedThemeName=$(basename $selectedTheme)
wpg -s $selectedThemeName
newTheme=$(wpg -c)
echo $newTheme > ~/.config/polybar/mood
#./themeUpdate.sh