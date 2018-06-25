#!/usr/bin/perl -w

use strict;
sub makeArrayConsecutive2 {
	my ($statues) = @_;
    my @sortedstatues = sort {$a<=>$b} @$statues;
    my $len = @$statues;
    $len -= 1;
    my $sum;
    my @sum;
    for(my $i = 0; $i < $len; $i++){
        my $c = $i + 1;
        my $dif = $sortedstatues[$c] - $sortedstatues[$i];
        #print "$dif\n";
        if($dif > 1){
            $dif -= 1;
            push @sum, $dif;
        }
    }
    if(grep {$sum += $_} @sum){
        return $sum
        }
        return 0;
}
