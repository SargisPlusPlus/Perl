use strict;
use warnings;

sub numOfDeletions{
    my @string = @{$_[0]};
    my $deletions = 0;
    my $stringSize = @string;
    for (my $i=0; $i<($stringSize-1); $i++){
        if($string[$i] eq $string[$i+1]){
            $deletions++;
        }
    }
    return $deletions;
}

sub main{
    my $T=<>;
    
    while(<>){ 
        chomp;
        my @string = split("",$_);
        print numOfDeletions(\@string)."\n";
    }
}

main();