#!/usr/bin/env bash

if grep --quiet 'url(#aurora)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#aurora)/url(#arrongin)/g'
elif grep --quiet 'url(#fitdance)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#fitdance)/url(#arrongin)/g'
elif grep --quiet 'url(#oomox)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#oomox)/url(#arrongin)/g'
elif grep --quiet 'url(#rainblue)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#rainblue)/url(#arrongin)/g'
elif grep --quiet 'url(#sunrise)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#sunrise)/url(#arrongin)/g'
elif grep --quiet 'url(#telinkrin)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#telinkrin)/url(#arrongin)/g'
elif grep --quiet 'url(#60spsycho)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#60spsycho)/url(#arrongin)/g'
elif grep --quiet 'url(#90ssummer)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#90ssummer)/url(#arrongin)/g'
else
  sed --in-place --follow-symlinks *.svg -e 's/currentColor/url(#arrongin)/g'
fi