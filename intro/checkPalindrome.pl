#!/usr/bin/perl -w

use strict;
sub checkPalindrome {
	my ($inputString) = @_;
    my @string = split // ,$inputString;
    my $length = length $inputString;
    my $half = $length / 2;
    #print $half;
    my $verdict = 'true';
    $half = int $half;
    
    for (my $i = 0; $i < $half;  $i++){
        my $first = shift @string;
        my $last = pop @string;
        print $first;
        print $last;
        if($first == $last && $first != 0){
            $verdict = 'true';
        }
        elsif($first ne $last){
            $verdict = 0;
        }
        $first = 0;
        $last = 0;
        
    }

    if($verdict eq '0'){
        return 0;
    }
    elsif($verdict =='true'){
        return 1;
    }
 }
