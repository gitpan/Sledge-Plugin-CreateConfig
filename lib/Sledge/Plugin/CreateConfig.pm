package Sledge::Plugin::CreateConfig;
use strict;
use warnings;
our $VERSION = 0.01;
use Carp;
use Sledge::Utils;
use UNIVERSAL::require;

sub import {
    my $pkg = caller(0);

    my $config_class = Sledge::Utils::class2appclass($pkg);
    $config_class .= '::Config';

    $config_class->use or die $@;

    no strict 'refs'; ## no critic
    *{"$pkg\::create_config"} = sub {
        my $self = shift;
        return $config_class->instance;
    };
}

1;
__END__

=head1 NAME

Sledge::Plugin::CreateConfig - auto generate the create_config method

=head1 SYNOPSIS

    package Proj::Pages;
    use Sledge::Plugin::CreateConfig;

    # you don't need to write the create_config method.

=head1 DESCRIPTION

auto generate the create_config method from convention.

If your Pages class is Proj::Pages, create_config method returns
instance of Proj::Config.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

=head1 AUTHOR

Tokuhiro Matsuno  C<< <tokuhiro __at__ mobilefactory.jp> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2006, Tokuhiro Matsuno C<< <tokuhiro __at__ mobilefactory.jp> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

