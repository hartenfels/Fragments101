#!/usr/bin/perl
use feature     'say';
use Devel::Peek 'SvREFCNT'; # access to reference count

my $thing = 'stuff';        # create a thing
say SvREFCNT($thing);       # refcount = 1

my $ref1  = \$thing;        # create reference to thing
say SvREFCNT($thing);       # refcount = 2

{                           # begin new block
    my $ref2 = \$thing;     # create another reference
    say SvREFCNT($thing);   # refcount = 3
}                           # code block ends, $ref2 goes out of scope
say SvREFCNT($thing);       # refcount = 2

$ref1 = 'something else';   # remove a reference
say SvREFCNT($thing);       # refcount = 1

