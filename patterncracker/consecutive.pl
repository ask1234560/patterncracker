#!/usr/perl
use Switch;
open(ob1,"<new.txt");
open(ob3,">>final.txt");
$f=0;
while(<ob1>)
{
 $a = $_ ;
 open(ob2,"+>tem.txt");
 print ob2 $a ;
 seek(ob2,0,0);
 $c=getc(ob2);
 $d=getc(ob2);
 for($i=0;$i<6;$i++)
 {
 switch( $c )
{
case 1 {
if($d == 2 || $d == 5 || $d == 4)
{$f++;
}
       }
case 3 {
if($d == 2 || $d == 5 || $d == 6)
{$f++;
}
       }
case 7 {
if($d == 4 || $d == 5 || $d == 8)
{$f++;
}
       }
case 9 {
if($d == 6 || $d == 5 || $d == 8)
{$f++;
}
       }
 
case 2 {
if($d == 1 || $d == 4 || $d == 5 || $d == 6 || $d == 3)
{$f++;
}
       }
case 8 {
if($d == 7 || $d == 4 || $d == 5 || $d == 6 || $d == 9)
{$f++;
}
       }

case 4 {
if($d == 1 || $d == 2 || $d == 5 || $d == 8 || $d == 7)
{$f++;
}
       }

case 6 {
if($d == 3 || $d == 2 || $d == 5 || $d == 8 || $d == 9)
{$f++;
}
       }

case 5 {
if($d == 3 || $d == 2 || $d == 1 || $d == 8 || $d == 9 || $d == 6 || $d == 4 || $d == 7)
{$f++;
}
       }
}
$c=$d;
$d=getc(ob2);
 } 
if($f==5)
{
print ob3 $a ;
}
$f=0;
}
close(ob1);
close(ob2);
close(ob3);
