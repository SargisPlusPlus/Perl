use strict;
use warnings;

my $json = '
[
{ "name" : "apples", 
"baskets" : [10,20,30] 
}, 
{ "name" : "bananas", 
"baskets" : [5,20,10,10] 
}
]
';

sub main{

	my @fruits = ( $json =~ m/\"name\"\s:\s\"(\w+)\"/g);
	my @basketsString = ( $json =~ m/\"baskets\"\s:\s\[(.*)\]/g);

	my $size = @fruits;
	for(my $i=0; $i<$size; $i++){
		my @baskets = split(",", $basketsString[$i]);
		my $numbaskets = @baskets;
		my $sum=0;
		map {$sum=$sum+$_} @baskets;
		print "$fruits[$i] $numbaskets $sum\n";
	}
}

main();