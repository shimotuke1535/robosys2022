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
out=$(./plus | seq 5)
[ "${out}" = 15 ] || ng ${LINENO}

###STRINPUT TEST###
out=$(./plus | echo あ)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "ERROR!!!" ] || ng ${LINENO}

###EMPTY INPUT TEST###
out=$(./plus | echo  )
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "ERROR!!!" ] || ng ${LINENO}
 
[ "$res" = 0 ] && echo OK
exit $res
