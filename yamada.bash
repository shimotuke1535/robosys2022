#!/bin/bash

a=山田
[ "$a" = 山田 ]
echo $?
[ "$a" = 海田 ]
echo $?

ng () 
{
	echo ${1}行目がちげぇよ!!
	ret=1
}

ret=0
a=山田
[ "$a" = 山田 || ng "$LINENO"]
[ "$a" = 山田 || ng "$LINENO"]

exit $ret
