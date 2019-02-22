#!/usr/bin/env bash

if grep --quiet 'url(#arrongin)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#arrongin)/url(#90ssummer)/g'
elif grep --quiet 'url(#aurora)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#aurora)/url(#90ssummer)/g'
elif grep --quiet 'url(#fitdance)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#fitdance)/url(#90ssummer)/g'
elif grep --quiet 'url(#oomox)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#oomox)/url(#90ssummer)/g'
elif grep --quiet 'url(#rainblue)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#rainblue)/url(#90ssummer)/g'
elif grep --quiet 'url(#sunrise)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#sunrise)/url(#90ssummer)/g'
elif grep --quiet 'url(#telinkrin)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#telinkrin)/url(#90ssummer)/g'
elif grep --quiet 'url(#60spsycho)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#60spsycho)/url(#90ssummer)/g'
else
  sed --in-place --follow-symlinks *.svg -e 's/currentColor/url(#90ssummer)/g'
fi