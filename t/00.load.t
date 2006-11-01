package t::Pages::Base;
use strict;
use warnings;
use Test::More tests => 1;

BEGIN {
use_ok( 'Sledge::Plugin::CreateConfig' );
}

diag( "Testing Sledge::Plugin::CreateConfig $Sledge::Plugin::CreateConfig::VERSION" );
