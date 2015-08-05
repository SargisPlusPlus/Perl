use strict;
use warnings;

sub main{
    my $T = <>;
    my @pi = split("","31415926535897932384626433833");
    while(<>){
        chomp;
        my @song = split / /;
        my $numWords = @song;
        my $isPiSong = 1;
        for (my $i=0; $i<$numWords; $i++){
            my @word = split("",$song[$i]);
            my $wordCount = @word;
            if ($wordCount != $pi[$i]){
                $isPiSong = 0;
            }
        }
        if ($isPiSong == 1){
            print "It's a pi song.\n";
        }else{
            print "It's not a pi song.\n";
        }
    }
}

main();