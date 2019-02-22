#!/usr/bin/env bash

if grep --quiet 'url(#arrongin)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#arrongin)/url(#oomox)/g'
elif grep --quiet 'url(#aurora)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#aurora)/url(#oomox)/g'
elif grep --quiet 'url(#fitdance)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#fitdance)/url(#oomox)/g'
elif grep --quiet 'url(#rainblue)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#rainblue)/url(#oomox)/g'
elif grep --quiet 'url(#sunrise)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#sunrise)/url(#oomox)/g'
elif grep --quiet 'url(#telinkrin)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#telinkrin)/url(#oomox)/g'
elif grep --quiet 'url(#60spsycho)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#60spsycho)/url(#oomox)/g'
elif grep --quiet 'url(#90ssummer)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#90ssummer)/url(#oomox)/g'
else
  sed --in-place --follow-symlinks *.svg -e 's/currentColor/url(#oomox)/g'
fi