#!/bin/perl
use strict; use warnings;

while (<>) 
{

  ## For all lines, replace all occurrences of #5c616c with another colour
  s/#5c616c/#d4af37/g

  ## Print the line
  print;
}