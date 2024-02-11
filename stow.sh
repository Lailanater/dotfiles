# Stow all directories in this repo
stow */

# Ensure that the steam folder is created
mkdir -p ~/.steam/steam
# Cannot stow steam_dev.cfg so the work around is to just copy
# This fixes slow steam download speed on linux
cp ./steam/steam_dev.cfg ~/.steam/steam
