use strict;
sub adjacentElementsProduct {
	my ($inputArray) = @_;
    my $len = @$inputArray;
    $len -= 1;
    my @products;
    for(my $i = 0; $i < $len; $i++){
        my $c = $i + 1;
        my $result = @$inputArray[$i] * @$inputArray[$c];
        push @products, $result;
        #print "$result\n";
    }
    $len -=1;
    my @sortednumbers = sort { $a <=> $b} @products;
    return $sortednumbers[$len];
}
