my $numStrings = <>;

for ($i=0; $i<$numStrings;$i++){
    my $S = <>;
    chomp($S);
    @S = split("",$S);
    $order = 0;
    @R;
    for ($j=(length($S)-1); $j>=0; $j--){
        @R[$j]=@S[$order];
        $order++;
    }

    $answer = "Funny\n";
    for ($j=1; $j<length($S);$j++){
        if (abs(ord(@S[$j])-ord(@S[$j-1])) != abs(ord(@R[$j])-ord(@R[$j-1]))){
            $answer = "Not Funny\n";
            break;
        }
    }
    print $answer;
    
}