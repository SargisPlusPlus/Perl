use strict;
use warnings;

sub main{
    my $N = <>;
    while(<>){
        chomp;
        if(/^[A-Z]{5}[0-9]{4}[A-Z]$/){
            print "YES\n";
        }else{
            print "NO\n";
        }
    }
}

main();