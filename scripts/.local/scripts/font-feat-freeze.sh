#!/usr/bin/env sh

# Depends on https://github.com/twardoch/fonttools-opentype-feature-freezer
cd ~/.local/share/fonts/Monaspace

for font in $(ls); do
  if [[ "$font" =~ ^MonaspaceNeon-(.*).otf ]]; then
    type=${BASH_REMATCH[1]}
    pyftfeatfreeze -f 'calt,cv31' -S -U Frozen MonaspaceNeon-$type.otf MonaspaceNeonFrozen-$type.otf
  fi
done

fc-cache -f
