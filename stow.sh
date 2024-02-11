# Stow all directories in this repo
stow */

# Cannot stow steam_dev.cfg so the work around is to just symlink
# This fixes slow steam download speed on linux
ln -s -f ~/dotfiles/steam/steam_dev.cfg ~/.steam/steam/steam_dev.cfg
