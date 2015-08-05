use strict;
use warnings;

sub main(){

	my @files = (1,2,3,4);

	foreach my $file(@files){
		print "$file\n";
	}

	my $file = '~/Desktop/Perl/logo.jpeg';

	#check if file exists
	if(-f $file){
		print "Found file: $file\n";
	}else{
		print "File not found\n";
	}
}

main();