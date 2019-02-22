#!/usr/bin/env bash

if grep --quiet 'url(#arrongin)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#arrongin)/url(#sunrise)/g'
elif grep --quiet 'url(#aurora)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#aurora)/url(#sunrise)/g'
elif grep --quiet 'url(#fitdance)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#fitdance)/url(#sunrise)/g'
elif grep --quiet 'url(#oomox)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#oomox)/url(#sunrise)/g'
elif grep --quiet 'url(#rainblue)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#rainblue)/url(#sunrise)/g'
elif grep --quiet 'url(#telinkrin)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#telinkrin)/url(#sunrise)/g'
elif grep --quiet 'url(#60spsycho)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#60spsycho)/url(#sunrise)/g'
elif grep --quiet 'url(#90ssummer)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#90ssummer)/url(#sunrise)/g'
else
  sed --in-place --follow-symlinks *.svg -e 's/currentColor/url(#sunrise)/g'
fi