#!/bin/bash -x

v1=yash
v2=chouhan

v3=$v1$v2
echo $v3

v4=4
v5=5

v6= `expr $v1 + $v2`
echo $v6

A="Hello"
B="World"
 
# 1) Simple concatenation
X="$A$B"
echo "$X"
 
# 2) Appending to string
X="$A"
X+="$B"
echo "$X"
 
# 3) Prepending to string
X="$B"
X="$A$X"
echo "$X"
 
# 4) Using printf 
X="$(printf "%s%s" "$A" "$B")"
echo "$X"
 
# 5) Echoing each string and capturing the output
X="$(echo -n "$A"; echo -n "$B")"
echo "$X"
 
# 6) Variation on 5 using loop and indirection
X="$(for C in A B; do echo -n "${!C}"; done)"
echo "$X"
 
# 7) Using temporary file
echo -n "$A" > tmp
echo -n "$B" >> tmp
read X < tmp
rm tmp
echo "$X"
 
# 8) Using process substitution
X="$(cat <(echo -n "$A") <(echo -n "$B"))"
echo "$X"
