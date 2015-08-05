use strict;
use warnings;

$|=1; #turn off output buffering; send as a whole HTML var to server


sub main(){

	my $file = '~/Desktop/Perl';

	open(INPUT, $file) or die("Couldn't Open\n");
	while (my $line = <INPUT>){
		if($line =~ /egg/){
			print $line;
		}
	}

	close INPUT; # close(INPUT); is OKAY
}

main();