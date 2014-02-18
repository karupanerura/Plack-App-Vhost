requires 'List::Util', '1.28';
requires 'Plack::Component';
requires 'Plack::Util::Accessor';
requires 'parent';
requires 'perl', '5.008005';

on configure => sub {
    requires 'CPAN::Meta';
    requires 'CPAN::Meta::Prereqs';
    requires 'Module::Build';
};

on test => sub {
    requires 'Test::More';
};
