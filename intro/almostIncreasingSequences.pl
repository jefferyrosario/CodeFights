#!/usr/bin/perl -w

use strict;

sub almostIncreasingSequence {
	my ($sequence) = @_;
    my $test = 0;
    my $length = @$sequence;
    if ($length < 3){
        return 1;
    }
    for(my $i = 0; $i < $length -2; $i++){
        my $first = @$sequence[$i];
        my $next = @$sequence[$i+1];
        my $last = @$sequence[$i+2];
        if($first >= $next){
            $test++;
            @$sequence[$i] = $next - 1;
        }
        if($next >= $last){
            $test++;
            if($first == $last){
                @$sequence[$i+2] = $next +1;
            }else{
                @$sequence[$i+1] = $first;
            }
        }
    }
    if($test > 1){
        return 0;
    }
    else{
        return 1;
    }
}
