use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Term::SimpleColor',
    license             => 'artistic2',
    dist_author         => 'Takashi Uesugi <tksuesg@gmail.com>',
    dist_version_from   => 'lib/Term/SimpleColor.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'Term-SimpleColor-*' ],
);

$builder->create_build_script();
