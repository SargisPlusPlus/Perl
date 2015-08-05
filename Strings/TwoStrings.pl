$T = <>;
for ($i=0; $i<$T; $i++){
    my $A = <>;
    chomp($A);
    @A = split("",$A);
    my $B = <>;
    chomp($B);
    @B = split("",$B);
    my $isCommon = 0;
    for ($j=0; $j<length($A); $j++){
        for ($k=0; $k<length($B); $k++){
            if(@A[$j] eq @B[$k]){
                $isCommon = 1;
                last;
            }
        }
        if ($isCommon){
            last;
        }
    }
    if ($isCommon){ 
        print "YES\n" ;
   }else{ 
        print "NO\n";
   }
}