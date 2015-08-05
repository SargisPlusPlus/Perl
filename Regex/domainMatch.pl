use  strict;
use warnings;

sub getUrls{
    my $line = $_[0];
    # match not including (?!)
    # non capturing grouping (?:)
    
    my @urls = /(?:\/\/|www\.|ww2\.)((?!www\.)(?!ww2\.)\w+(?:\.\w+)*(?:\.[a-z]{2,4})+)(?:\/|\?)/g; 
    my $num = @urls;
    #print "FOUND FROM SINLGLE LINE: $num\nURLS: @urls\n";
    return \@urls;
}

sub printUrls{
    my @all_urls = @{$_[0]};
    my %uniqueUrls = map {$_=>1} @all_urls;
    @all_urls = keys %uniqueUrls;
    @all_urls = sort @all_urls;

    my $numUrls = @all_urls;
    
    #print "Num of URLS total found: $numUrls\n";
    for (my $i=0; $i<$numUrls; $i++){
        print $all_urls[$i];
        if ($i!=($numUrls)-1){
            print ";"; 
        }
    }
}

sub main{
    my $N = <>;
    my @all_urls;
    while(<>){
        chomp;
        my $urlsRef = getUrls($_); 
        my @urlsLine = grep {$_} @$urlsRef;
        push(@all_urls, @urlsLine);
    }
    printUrls(\@all_urls);
}

main();