use strict;
use warnings;

use lib 'inc';
use ExtUtils::MakeMaker::Dist::Zilla::Develop;

use ExtUtils::Depends 0.302;

# keep this code consistent with the [MakeMaker::Awesome] arguments in dist.ini
my $pkg = ExtUtils::Depends->new('B::OPCheck', 'B::Utils');

WriteMakefile(
    NAME => 'B::OPCheck',
    VERSION_FROM => 'lib/B/OPCheck.pm',
    INSTALLMAN1DIR => 'none',
    INSTALLMAN3DIR => 'none',
    NORECURS => 1,
    $pkg->get_makefile_vars,
);

use Devel::PPPort 3.3202;
Devel::PPPort::WriteFile();
