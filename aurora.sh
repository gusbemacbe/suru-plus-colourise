#!/usr/bin/env bash

if grep --quiet 'url(#arrongin)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#arrongin)/url(#aurora)/g'
elif grep --quiet 'url(#fitdance)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#fitdance)/url(#aurora)/g'
elif grep --quiet 'url(#oomox)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#oomox)/url(#aurora)/g'
elif grep --quiet 'url(#rainblue)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#rainblue)/url(#aurora)/g'
elif grep --quiet 'url(#sunrise)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#sunrise)/url(#aurora)/g'
elif grep --quiet 'url(#telinkrin)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#telinkrin)/url(#aurora)/g'
elif grep --quiet 'url(#60spsycho)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#60spsycho)/url(#aurora)/g'
elif grep --quiet 'url(#90ssummer)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#90ssummer)/url(#aurora)/g'
else
  sed --in-place --follow-symlinks *.svg -e 's/currentColor/url(#aurora)/g'
fi