#!/bin/perl
use strict;
use warnings;

while (readline) 
{

  ## For all lines, replace all occurrences of #5c616c  with another colour
  s/#5c616c/#ff7538/g;

  ## Print the line
  print;
}