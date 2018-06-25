#!/usr/bin/perl -w

sub shapeArea {
	my ($n) = @_;
    $n = $n * $n + ($n - 1)**2;
}
