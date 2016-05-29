use strict;
use warnings;

use lib 'inc';
use ExtUtils::MakeMaker::Dist::Zilla::Develop;

use ExtUtils::Depends 0.302;

# keep this code consistent with the [MakeMaker::Awesome] arguments in dist.ini
my $pkg = ExtUtils::Depends->new('B::OPCheck', 'B::Utils');

$ENV{PERL_MM_OPT} = 'NORECURS=1';

WriteMakefile(
    NAME => 'B::OPCheck',
    VERSION_FROM => 'lib/B/OPCheck.pm',
    INSTALLMAN1DIR => 'none',
    INSTALLMAN3DIR => 'none',
    $pkg->get_makefile_vars,
);

