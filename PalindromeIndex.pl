# Enter your code here. Read input from STDIN. Print output to STDOUT

use strict;
use warnings;

sub isPalindrome{
    my @string = @{$_[0]};
    my $stringLength=@string; 
    if ($stringLength==0 || $stringLength==1){
        return 1;
    }elsif($string[0] eq $string[$#string]){
        shift(@string);
        pop(@string);
        isPalindrome(\@string);
    }else{
        return 0;
    }
}

sub solver{
    my $line=$_[0];
    my @string = split("",$line);
    
        my $i=0;
        my $j=@string;
        $j--; 
        while($string[$i] eq $string[$j]){
            last if ($i==$j || $i==$j+1);
            $i++;
            $j--;
        }
        if ($i==$j || $i==$j+1){
            print "-1\n";
            return;
        }
        splice @string, $i, 1;
        if (isPalindrome(\@string)==1){
            print "$i\n";
        }else{
            print "$j\n";
        }
}

sub main{
    my $T=<>;
 
    while(<>){
        chomp;
        solver($_);
    }
}

main();