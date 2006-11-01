use strict;
use warnings;
use inc::Module::Install;

name            'Sledge-Plugin-CreateConfig';
all_from        'lib/Sledge/Plugin/CreateConfig.pm';

requires 'UNIVERSAL::require' => 0;
requires 'Sledge::Utils' => 0.02;
build_requires 'Test::Base' => 0;

use_test_base;
auto_install;
WriteAll;

