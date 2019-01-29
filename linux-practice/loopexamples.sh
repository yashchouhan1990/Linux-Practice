#!/bin/bash

#1) Unix For loop statement
for i in 1 2 3 4 5
 do
 sum=`expr $sum + $i`
 done
 echo $sum

#2) Unix While loop statement

a=1
 while [ $a -le 5 ]
 do
 echo "While loop value of a=" $a
 a=`expr $a + 1`
 done

#3) Unix Until loop statement
b=1
 until [ $b -ge 3 ]
 do
 echo "Untill loop value of b=" $a
 b=`expr $b + 1`
 done
