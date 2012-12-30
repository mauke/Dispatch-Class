use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Dispatch::Class',
    AUTHOR              => q{Lukas Mai <l.mai@web.de>},
    VERSION_FROM        => 'lib/Dispatch/Class.pm',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => '6.56',
    },
    LICENSE => 'perl',
    PL_FILES            => {},
    BUILD_REQUIRES => {
        'Test::More' => 0,
        'IO::Handle' => 0,
    },
    PREREQ_PM => {
        'warnings' => 0,
        'strict' => 0,
        'Sub::Exporter' => 0,
        'Scalar::Util' => 0,
    },
    MIN_PERL_VERSION => '5.6.0',
    META_MERGE => {
        resources => {
            repository => {
                url => 'git://github.com/mauke/Dispatch-Class.git',
                web => 'https://github.com/mauke/Dispatch-Class',
                type => 'git',
            },
        },
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Dispatch-Class-*' },
);
