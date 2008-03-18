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
        'Carp'                     => 1.04,
        'URI'                      => 1.35,
        'WWW::Mechanize'           => 1.34,
        'HTML::TokeParser::Simple' => 3.15,
        'File::Basename'           => 2.74,
        'Devel::TakeHashArgs'      => 0.002,
        'Class::Data::Accessor'    => 0.04001,
    },
    add_to_cleanup      => [ 'WWW-PAUSE-CleanUpHomeDir-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
