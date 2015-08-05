#~~~~~~~~~~~~~~SORTING~~~~~~~~~~~~~

@sorted = sort{$a cmp $b} @letters; #sorts alphabetically
sort {$a <=> $b } @numbers; #sort numbers
sort {$b <=> $a } #reverse sort

#~~~~~~~~~~~~~~ GREP ~~~~~~~~~~~~~~~
@greater = grep{$_ > 30} @numbers;

@palindrome = grep {uc($_) eq reverse uc($_) } @words;

 
 #~~~~~~~~~~~~~~~ MAP ~~~~~~~~~~~~~~~~
 @sqrt = map {sqrt($_)} grep{$_>0} @sqrs;