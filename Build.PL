use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WWW::PAUSE::CleanUpHomeDir',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/WWW/PAUSE/CleanUpHomeDir.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                     => 1.26,
        'URI'                      => 1.59,
        'WWW::Mechanize'           => 1.72,
        'HTML::TokeParser::Simple' => 3.15,
        'File::Basename'           => 2.82,
        'Devel::TakeHashArgs'      => 0.005,
        'Sort::Versions'           => 1.5,
        'Class::Data::Accessor'    => 0.04004,
        perl                       => 5.006,
    },
    configure_requires => { 'Module::Build' => 0.40 },
    add_to_cleanup      => [ 'WWW-PAUSE-CleanUpHomeDir-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
