use strict;
use warnings;

sub main{
    my $N = <>;
    my @emails;
    while (<>){
        my @matches = /(\w+(?:\.[a-z]+)*@\w+(?:\.[a-z]+)+)/g;
        push(@emails,@matches);
    }
    # hash keys are unique; saving all emails as keys in a hash
    my %hash   = map {$_ => 1;} @emails;
    @emails = keys %hash;
    @emails = sort @emails;

    foreach my $email (@emails){
        print $email;
        if ($email ne $emails[$#emails]){
            print ";";
        }
    }
}

main();