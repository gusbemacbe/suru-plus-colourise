#!/usr/bin/env bash

NEW_COLOR="url(#telinkrin)"

ALL_COLORS=(
  "url(#arrongin)"
  "url(#aurora)"
  "url(#fitdance)"
  "url(#oomox)"
  "url(#rainblue)"
  "url(#sunrise)"
  "url(#60spsycho)"
  "url(#90ssummer)"
  "currentColor"
)

for color in "${ALL_COLORS[@]}" ; do
  if grep --quiet "$color" *.svg; then
    sed --in-place --follow-symlinks *.svg -e 's/'"$color"'/'"$NEW_COLOR"'/g'
    break
  fi
done