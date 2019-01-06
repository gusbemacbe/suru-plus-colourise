#!/bin/perl
use strict; use warnings;

while (<>) 
{

  ## For all lines, replace all occurrences of #5c616c with another colour
  s/#5c616c/#ed2939/g

  ## Print the line
  print;
}