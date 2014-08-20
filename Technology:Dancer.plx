#!/usr/bin/perl
use strict;
use warnings;
use Dancer;
use CGI qw(escapeHTML);

# A static route
get '/' => sub {
    return 'Hello, world!';
};

# A route with a parameter
get '/hello/:name' => sub {
    my $name = escapeHTML(param 'name');
    return "Hello, $name!";
};

dance;
