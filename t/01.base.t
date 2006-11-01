use strict;
use warnings;
use Test::Base;

plan tests => 1*blocks;

filters(
    {   input    => [qw/chomp/],
        expected => [qw/chomp/],
    }
);

run {
    my $block = shift;

    my $class = $block->input;
    eval qq{
        package $class;
        use Sledge::Plugin::CreateConfig;
    };
    die $@ if $@;

    isa_ok($class->create_config, $block->expected);
};

__END__

=== simple
--- input: t::Pages::Base
--- expected: t::Config

=== simple
--- input: t::Pages
--- expected: t::Config

