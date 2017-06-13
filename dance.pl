#!/usr/bin/perl

use Dancer;


sub sum {
          
    my ($x, $y) = @_;
    #my $x = 1;
    #my $y = 2;
    return $x + $y;
};

get '/chen' => sub {
    sum(2,3)
};

get '/hi' => sub {
    "Hello World!"
};

dance();
