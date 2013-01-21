package Term::SimpleColor;

use strict;
use warnings;
use utf8;
use Carp;
use Data::Dumper;
use base 'Exporter';

our @EXPORT = qw/ black red green yellow blue purple cyan gray /;
our @EXPORT_OK = qw/ default bg_default bg_black bg_red bg_green bg_yellow bg_blue bg_purple bg_cyan bg_gray underscore bold invert dc_default /;


# TRIVIA: \x1b is escape code
my %COLOR = ( 
    black  => "\x1b[31m",
    red    => "\x1b[31m",
    green  => "\x1b[32m",
    yellow => "\x1b[33m",
    blue   => "\x1b[34m",
    purple => "\x1b[35m",
    cyan   => "\x1b[36m",
    white   => "\x1b[37m",
    default   => "\x1b[39m",
);

my %BG_COLOR = (
    bg_black  => "\x1b[40m",
    bg_red    => "\x1b[41m",
    bg_green  => "\x1b[42m",
    bg_yellow => "\x1b[43m",
    bg_blue   => "\x1b[44m",
    bg_purple => "\x1b[45m",
    bg_cyan   => "\x1b[46m",
    bg_gray   => "\x1b[47m",
    bg_default   => "\x1b[49m",
);


my %DECORATE = (
    underscore => "\x1b[4m",
    bold => "\x1b[1m",
    invert => "\x1b[7m",
    dc_default => "\x1b[0m",
);


sub _code {
    my ( $color_key, $string ) = @_;

    if ( !defined($color_key) || !defined( $COLOR{$color_key} ) ) {
        croak 'The color is NOT defined';
    }

    return $COLOR{$color_key}  unless defined($string);
    return $COLOR{$color_key} . $string . default();
}


sub default {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _code($me, $string);
}


sub red {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _code($me, $string);
}

sub green {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _code($me, $string);
}

sub yellow {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _code($me, $string);
}

sub blue {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _code($me, $string);
}

sub purple {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _code($me, $string);
}

sub cyan {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _code($me, $string);
}

sub white {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _code($me, $string);
}


sub _bg_code {
    my ( $color_key, $string ) = @_;

    if ( !defined($color_key) || !defined( $BG_COLOR{$color_key} ) ) {
        croak 'The color is NOT defined';
    }

    return $BG_COLOR{$color_key}  unless defined($string);
    return $BG_COLOR{$color_key} . $string . bg_default();

    return '';
}


sub bg_default {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _bg_code($me, $string);
}


sub bg_red {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _bg_code($me, $string);
}

sub bg_green {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _bg_code($me, $string);
}

sub bg_yellow {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _bg_code($me, $string);
}

sub bg_blue {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _bg_code($me, $string);
}

sub bg_purple {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _bg_code($me, $string);
}

sub bg_cyan {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _bg_code($me, $string);
}

sub bg_gray {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _bg_code($me, $string);
}



sub _dc_code {
    my ( $color_key, $string ) = @_;

    if ( !defined($color_key) || !defined( $DECORATE{$color_key} ) ) {
        croak 'The color is NOT defined.', " $color_key" ;
    }

    return $DECORATE{$color_key}  unless defined($string);
    return $DECORATE{$color_key} . $string . dc_default();

    return '';
}

sub dc_default {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _dc_code($me, $string);
}

sub underscore {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _dc_code($me, $string);
}

sub bold {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _dc_code($me, $string);
}

sub invert {
    my ($string) = @_;
    my $me = (split('::', (caller(0))[3]))[-1];
    return _dc_code($me, $string);
}

1;
__END__
=head1 NAME

Term::ColorSimple - More simple color screen output than Term::ANSIColor

=head2 SYNOPSIS


=head2 DESCRIPTION


=head2 AUTHOR

Takashi Uesugi <tksuesg@gmail.com>

=head2 COPYRIGHT AND LICENCE

Copyright (C) 2013 by Takashi Uesugi

=cut

