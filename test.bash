#!/bin/bash 
# SPDX-FileCopyrightText: 2022 Shimono Mao
# SPDX-License-Identifier:GPL-3.0-or-later
ng()
{
	echo NG at Line $1
	res=1
}

res=0

###I/O TEST###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

###STRINPUT TEST###
out=$(echo あ | ./plus)
[ "$?" = 0 ]      || ng ${LINENO}
[ "${out}" = "ERROR!!!" ] || ng ${LINENO}

###EMPTY INPUT TEST###
out=$(echo  | ./plus)
[ "$?" = 0 ]      || ng ${LINENO}
[ "${out}" = "ERROR!!!" ] || ng ${LINENO}
 
[ "$res" = 0 ] && echo OK
exit $res
