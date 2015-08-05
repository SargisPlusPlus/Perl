use strict;
use warnings;

sub containsElement{    
    my @rock = split("",$_[0]);
    my $element = $_[1];
    
    if ( grep( /$element/, @rock ) ) {
        return 1;
    }
    return 0;
}

sub main{
    my $N = <>;
    my $gemrocks = 0;
    
    if ($N!=0){
        my $firstRock = <>;
        chomp($firstRock);

        my @firstRock = split("",$firstRock);
        #making sure we have unique letters
        my %hash = map {$_ => 1 } (@firstRock);
        @firstRock = keys %hash;
        
        my @rocks;
        while(<>){
            chomp;
            push(@rocks, $_);
        }
        
        my $numRocks = @rocks;
        foreach my $element (@firstRock){
            for(my $i=0; $i<$numRocks; $i++){
                last if (containsElement($rocks[$i],$element)==0);
                if ($i==($numRocks-1)){
                        $gemrocks++;
                }                
            }
        }
    }
    print $gemrocks;
}


main();