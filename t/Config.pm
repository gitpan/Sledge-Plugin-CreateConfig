package t::Config;
use strict;
use warnings;

sub instance { bless {}, shift }
sub test { 'simple' }

1;
