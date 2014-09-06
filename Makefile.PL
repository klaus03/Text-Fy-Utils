use 5.020;

use ExtUtils::MakeMaker 6.48;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Text::Fy::Utils',
    MIN_PERL_VERSION  => 5.020,
    VERSION_FROM      => 'lib/Text/Fy/Utils.pm', # finds $VERSION
    PREREQ_PM         => { }, # e.g., Module::Name => 1.1
    ABSTRACT_FROM     => 'lib/Text/Fy/Utils.pm', # retrieve abstract from module
    AUTHOR            => 'Klaus Eichner <klaus03@gmail.com>',
	META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
        repository => {
                type => 'git',
                url  => 'https://github.com/klaus03/Text-Fy-Utils.git',
                web  => 'https://github.com/klaus03/Text-Fy-Utils',
    }}},
);
