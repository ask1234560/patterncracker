#!/usr/perl
open(ob1,"<wordlist.txt");
open(ob3,">>new.txt");
while(<ob1>)
{
 $a = $_ ;
 open(ob2,"+>tem.txt");
 print ob2 $a ;
 seek(ob2,0,0);
 $c=getc(ob2);
if($c!=4 && $c!=5 && $c!=6 && $c!=7 && $c!=8 && $c!=9)
{
print ob3 $a;
}
}
close(ob1);
close(ob2);
close(ob3);
