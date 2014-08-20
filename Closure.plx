#!/usr/bin/perl
use strict;
use warnings;

sub make_anonymous_sub {
    my $greeting = shift;   # lexical, block-scoped variable
    return sub {
        my $who = shift;
        print "$greeting $who!\n" # $greeting refers to above lexical variable
    };
    # $greeting goes out of scope here, but is still referenced by the returned
    # anonymous subroutine. The subroutine "remembers" its environment.
}

my $hello = make_anonymous_sub('Hello');
my $greet = make_anonymous_sub('Greetings');

$hello->('World'  ); # prints "Hello World!"
$greet->('Terrans'); # prints "Greetings Terrans!"
