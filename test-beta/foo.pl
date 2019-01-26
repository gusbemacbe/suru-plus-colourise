#!/bin/perl
use strict;
use warnings;

my $replacement=<<EoF;
<defs>
    <style id="suru-color-scheme" type="text/css">
        .SuruColorScheme-default { fill: #5c616c; } 
        .SuruColorScheme-arrongin { fill: url(#grad_arrongin); } 
        .SuruColorScheme-black { fill: #3B3B3B; } 
        .SuruColorScheme-blue { fill: #1A7FD4; } 
        .SuruColorScheme-brown { fill: #945F2B; } 
        .SuruColorScheme-golden { fill: #EAB305; } 
        .SuruColorScheme-green { fill: #46A926; } 
        .SuruColorScheme-grey { fill: #888888; } 
        .SuruColorScheme-fitdance { fill: url(#grad_fitdance); } 
        .SuruColorScheme-ibiza { fill: url(#grad_ibiza); } 
        .SuruColorScheme-minoan { fill: url(#grad_minoan); } 
        .SuruColorScheme-mycenean { fill: url(#grad_mycenean); } 
        .SuruColorScheme-orange { fill: #F34F17; } 
        .SuruColorScheme-pink { fill: #ED3146; } 
        .SuruColorScheme-purple { fill: #9B33AE; } 
        .SuruColorScheme-rainblue { fill: url(#grad_rainblue); } 
        .SuruColorScheme-red { fill: #F22C42; } 
        .SuruColorScheme-telinkrin { fill: url(#grad_telinkrin); } 
        .SuruColorScheme-turquoise { fill: #31C6B7; }
        .SuruColorScheme-whitesmoke { fill: #ECECEC; }
    </style>
    <linearGradient id="grad_arrongin" x1="0%" x2="0%" y1="0%" y2="100%">
        <stop offset="0%" style="stop-color: #FDA463; stop-opacity:1"/>
        <stop offset="100%" style="stop-color: #DC6F26; stop-opacity:1"/>
    </linearGradient>
    <linearGradient id="grad_fitdance" x1="0%" x2="0%" y1="0%" y2="100%">
        <stop offset="0%" style="stop-color: #1AD6AB; stop-opacity:1"/>
        <stop offset="100%" style="stop-color: #329DB6; stop-opacity:1"/>
    </linearGradient>
    <linearGradient id="grad_ibiza" x1="0%" x2="0%" y1="0%" y2="100%">
        <stop offset="0%" style="stop-color: #ff6a00; stop-opacity:1"/>
        <stop offset="100%" style="stop-color: #ee0979; stop-opacity:1"/>
    </linearGradient>
    <linearGradient id="grad_minoan" x1="0%" x2="0%" y1="0%" y2="100%">
        <stop offset="0%" style="stop-color: #e2d19f; stop-opacity:1"/>
        <stop offset="100%" style="stop-color: #5e1a16; stop-opacity:1"/>
    </linearGradient>
    <linearGradient id="grad_mycenean" x1="0%" x2="0%" y1="0%" y2="100%">
        <stop offset="0%" style="stop-color: #ce3c22; stop-opacity:1"/>
        <stop offset="100%" style="stop-color: #b11819; stop-opacity:1"/>
    </linearGradient>
    <linearGradient id="grad_rainblue" x1="0%" x2="0%" y1="0%" y2="100%">
        <stop offset="0%" style="stop-color: #00F260; stop-opacity:1"/>
        <stop offset="100%" style="stop-color: #0575E6; stop-opacity:1"/>
    </linearGradient>
    <linearGradient id="grad_telinkrin" x1="0%" x2="0%" y1="0%" y2="100%">
        <stop offset="0%" style="stop-color:#f99f5e; stop-opacity:1"/>
        <stop offset="100%" style="stop-color:#f95e6b; stop-opacity:1"/>
    </linearGradient>
</defs>
EoF

## This is just to fix SE's syntax highlighting /    
my $foundSvg = 0;

while (readline) 
{
  ## Insert the replacement after the 1st line matching '<svg'
  if (/<\s*svg/) 
  {
    $foundSvg++;
  }

  if ($foundSvg == 1) 
  {
    ## $_ is the value of the current line. If we have found the <svg,
    ## append $replacement to this line
    $_ .= $replacement;

    ## Increment $foundSvg so we don't do this twice
    $foundSvg++;
  }

  ## For all lines, replace all occurrences of #5c616c with class="SuruColorScheme-default"
  s/fill="#5C616C"/class="SuruColorScheme-default"/g;

  ## Print the line
  print;
} 
