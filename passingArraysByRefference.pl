# RETURNing ARRAY from Subroutine
sub twoarrays {

	@x = (1,2,3);
	@y = (4,5,6);

	return \@x, \@y;
}

($xref, $yref) = twoarrays;
print "@$xref\n";
print "@$xref\n";



#Passing ARRAY to Subroutine
sub addup{
	my ($ref1,$ref2)=@_;
	while(@$ref1){
		unshift @sum, pop(@$ref1) + pop(@$ref2);
	}
	return $sum;
}