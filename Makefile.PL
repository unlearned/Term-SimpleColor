use inc::Module::Install;
name 'Term-SimpleColor';

all_from 'lib/Term/SimpleColor.pm';

requires 'strict';
requires 'warnings';
requires 'utf8';
requires 'Carp';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
test_requires 'Test::MockObject';
test_requires 'strict';
test_requires 'warnings';
test_requires 'utf8';

auto_set_repository;
auto_include;
WriteAll;
