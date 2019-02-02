#!/bin/sh -ex

echo "Enter two integers: "
a=$1
b=$2
echo "first parameter $a"
echo "second parameter $b"
echo "Count of parameters passed : $#"
if [ $# -eq 2 ]
then
  result=`expr $a + $b`
  # show result
  echo "Result: $result"
else
   echo "enter two parameters only"
   exit
fi
