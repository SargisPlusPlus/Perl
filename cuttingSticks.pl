# Enter your code here. Read input from STDIN. Print output to STDOUT

use strict;
use warnings;

sub cutSticks{
    my @sticks = @{$_[0]};
    my $cutBy = $_[1];

    @sticks = grep {$_>0} map {$_-=$cutBy} @sticks;
    return \@sticks;
}

sub findMinIndex{
    my @sticks = @{$_[0]};
    my $numSticks = @sticks;
    my $min = $sticks[0];
    my $minIndex = 0;

    for (my $i=1; $i<$numSticks; $i++){
        if ($min > $sticks[$i]){
            $min = $sticks[$i];
            $minIndex = $i;
        }
    }
    return $minIndex;
}

sub solver{
    my @sticks = @{$_[0]};
    my $numSticks = @sticks;
    while ($numSticks > 0){
            print "$numSticks\n";
            my $minIndex = findMinIndex(\@sticks);
            my $cutBy = $sticks[$minIndex];
            my $sticksRef = cutSticks(\@sticks, $cutBy);
            @sticks = @$sticksRef;
            $numSticks = @sticks;
    }
}

sub main{
    my $N = <>; 
    my $line = <>;
    chomp($line);
    my @sticks = split(" ",$line);
    solver(\@sticks);
}

main();
