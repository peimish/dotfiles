#/bin/bash

DOTPATH=~/dotfiles

for f in $DOTPATH/.??*
do
    [ "$f" = ".git" ] && continue
    ln -snfv "$DOTPATH/$f" "$HOME"/"$f"
done
