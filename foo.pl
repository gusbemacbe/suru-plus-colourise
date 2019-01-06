#!/bin/perl
my $replacement=<<EoF;
<linearGradient id="grad1" x1="0%" y1="0%" x2="100%" y2="0%">
  <stop offset="0%" style="stop-color:rgb(255,255,0);stop-opacity:1" />
  <stop offset="100%" style="stop-color:rgb(255,0,0);stop-opacity:1" />
</linearGradient>
EoF
## This is just to fix SE's syntax highlighting /    
my $foundSvg = 0;
while (<>) {
  ## Insert the replacement after the 1st line matching '<svg'
  if (/<\s*svg/) {
    $foundSvg++;
  }
  if ($foundSvg == 1) {
    ## $_ is the value of the current line. If we have found the <svg,
    ## append $replacement to this line
    $_ .= $replacement;
    ## Increment $foundSvg so we don't do this twice
    $foundSvg++;
  }
  ## For all lines, replace all occurrences of #5c616c with url(#grad1)
  s/#5c616c/url(#grad1)/g;
  ## Print the line
  print;
}