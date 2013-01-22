use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Term::SimpleColor',
    AUTHOR              => 'Takashi Uesugi <tksuesg@gmail.com>',
    VERSION_FROM        => 'lib/Term/SimpleColor.pm',
    ABSTRACT_FROM       => 'lib/Term/SimpleColor.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Term-SimpleColor-*' },
);
