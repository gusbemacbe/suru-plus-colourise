#!/usr/bin/env bash

if grep --quiet 'url(#arrongin)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#arrongin)/url(#60spsycho)/g'
elif grep --quiet 'url(#aurora)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#aurora)/url(#60spsycho)/g'
elif grep --quiet 'url(#fitdance)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#fitdance)/url(#60spsycho)/g'
elif grep --quiet 'url(#oomox)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#oomox)/url(#60spsycho)/g'
elif grep --quiet 'url(#rainblue)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#rainblue)/url(#60spsycho)/g'
elif grep --quiet 'url(#sunrise)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#sunrise)/url(#60spsycho)/g'
elif grep --quiet 'url(#telinkrin)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#telinkrin)/url(#60spsycho)/g'
elif grep --quiet 'url(#90ssummer)' *.svg; then
  sed --in-place --follow-symlinks *.svg -e 's/url(#90ssummer)/url(#60spsycho)/g'
else
  sed --in-place --follow-symlinks *.svg -e 's/currentColor/url(#60spsycho)/g'
fi