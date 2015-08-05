$s = <>;

chomp($s);
$s = lc $s;
@s = split("",$s);

$ascii = 97;
$pangram = 1;
for ($i=$ascii; $i<123; $i++){
    $char = chr($i);
    if(!grep(/$char/,$s)){
        $pangram = 0;
        last;
    }
}

if ($pangram){
    print "pangram\n";
}else{
    print "not pangram\n";
}
