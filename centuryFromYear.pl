#!/usr/bin/perl -w
sub centuryFromYear {
	my ($year) = @_;
    $year = $year / 100;
    $camp = int $year;
    if ($year > $camp){
      $year++;
      }
      $year = int $year;
    return $year,
}
