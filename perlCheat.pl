#~~~~~~~~~~~~~~~~~~~~~~~~~~HASHES~~~~~~~~~~~~~~~~~~~~~~~~~~
%h = ("first name" => "Bob",
	  "last name" => "Smith");

$h{"first name"} = "Bob";

#PRING KEYS ASSOCIATED WITH THE HASHES
print keys %h, "\n";
#PRING VALUES ASSOCIATED WITH THE HASHES
print values %h, "\n";

#HASH references
$hash = ( "id" => 2, "value" => 12);
$HashRef = \%hash;
$HashRef->{"id"} = 2
my %newHash = %$HashRef;



#REFERENCE (POINTER) TO ARRAY
$ref = \@array;

#DEREFFERENCE THE ARRAY
@$ref = (1,2,3,4);
$ref->[3] = 4;

#REFERENCE TO AN ARRAY
$arrayRef = ["one", "two"];
$arrayRef->[1] = "two";

@array2 = (1,2,3,4 $arrayRef);

#~~~~~~~~~~~~~~~~~~~~~~~FUNCTIONS~~~~~~~~~~~~~~~~~~~~~~~~~~
@array = (1,2,3);
$c = push(@array, 1);  #returns the result of push (num of elements)
$c = pop(@array); #returns the popped value

$c = shift(@array);  #removes from begining of array and returns what it removed
$c = unshift(@array,1); #adds to beginig and returns num of elements

if (@a) {...} else {...}
if (1) {...} elsif {...} else {...}
unless ($a>1) {...} #if not
until (@a > 10) {...}

foreach $x (1,2,3,4,5){
	...
}


#JOIN and SPLIT 
@words = split("", $string);
$string = join("", @words);

#OPEN and CLOSE
open(FH, "<", $filename); # < reading, >  writing, >> appending
open(FH, "<$filename");
open(FH, "$filename") || die "Can't open $filename"; #open returns T/F
close(FH);

#Doing something with file
open (FH, $filename);
while(<FH>){
}

while ($line = <FN>){
	chomp($line);
	@values = split /\t/, $line;
	foreach my $value(@values){
		$sum += $value;
	}
	print "Sum is $sum\n";
}
# Simplified: removing $line causes perl work on $_
# 
# MAP works on $_ of array
# map {do something} @array
while (<IN>){
	chomp; #works on $_
	@values = split /\t/; #assumes $_
	map {$sum=$sum+$_} @values;
	print "Sum is $sum\n";
}

# APPLY map of the output of split
while (<>){
	chomp; #works on $_
	map {$sum=$sum+$_} split /\t/; #split works on $_ (line) and map on $_, the output array of split
	print "Sum is $sum\n";
}

#ON single line: perl -lane 'map{$s+=$_} @F; print "$s";'


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~REGEX~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
$string =~ m//; #returns true or false
{n}   # Match exactly n times
{n,}  # MAtch least n
{n,m} # Match n to m

$string = "My name is Rob";
$string =~ m/\s+/; #TRUE
$string =~ s/R/B/; #Substitute R for B

#Popular
$string =~ s/\s+/ /; #substitute mult spaces for a single space
$string =~ s/^\s+//; #Match all white spaces in begining of line and remove it
$string =~ s/\s$//;  #Remove trailing spaces

$string =~ m/r/i; #case insensentive


# GROUPing
#matches are saved in $1, $2, ...
$string =~ m/(R..)/;
now $1 = Rob

#Capitalize first letter of each word in sencence
$string =~ s/(\w)(\w+)/uc($1).$2/eg; #replace with uppdercase $1 joined with $2. e - execute directly and g do it for every char in string

$string =~ m/R../;
$_ =~ m/R../;
m/R../;
/R../; #wiil be used on $_


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Subroutines and Modules~~~~~~~~~~~~~~
sub func{
	@arguments = @_;
	$arguments[0],...
	my $result = ... # if w/o my, $result would be global
	return $result;
}


#Have to pass reference to list because otherwise only opinters willl be passed to subroutine

($ref1, $ref2) = func (\@list1, \@list2)
sub func {
	(@list1, $list2) = @_;
	return $list1, $list2;
}


sub name {
	 my ($self, $n) = @_;
	 $n && ($self->())
}





#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GREP and MAP~~~~~~~~~~~~~~~~~~~~~~~~~
map {$_=* 2} (@array); #mult each elemenet by 2

grep {$_>2} (@array);  #extract items from array that are >2
grep {$_ =~ "n"} @array; #extract all words that cotain n;































