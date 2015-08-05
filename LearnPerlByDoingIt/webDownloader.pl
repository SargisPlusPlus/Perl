use strict;
use warnings;

use LWP::Simple;

sub main{

	print "Downloading...\n";
	#print get("http:www.caveofprogramming.com/");

	#downloads the page as a file
	#getstore("http:www.caveofprogramming.com/","home.html");
	
	#within single quotes, it is just a string.
	my $code = getstore('https://pbs.twimg.com/profile_images/425063504039538688/sO0mRdKW.jpeg',"logo.jpeg")
	if($code == 200){
		print "Success\n";
	}else{
		print "Failed\n";
	}

	print "Finished\n";
}

main();