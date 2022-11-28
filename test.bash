#!/bin/bash 
# SPDX-FileCopyrightText: 2022 Shimono Mao
# SPDX-License-Identifier: This Softwere Package allowed Redistribution and Use by GPL 3.0
ng()
{
	echo NG at Line $1
	res=1
}

res=0

###I/O TEST###
out=$(seq 5 | ./plus | echo f)
[ "${out}" = 15 ] || ng ${LINENO}

###STRINPUT TEST###
out=$(echo あ | ./plu | echo f)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

###EMPTY INPUT TEST###
out=$(echo  | ./plus | echo f)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}
 
[ "$res" = 0 ] && echo OK
exit $res
