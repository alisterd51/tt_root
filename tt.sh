#!/bin/bash
 
PATH=$(/usr/bin/getconf PATH || /bin/kill $$)
 
PASS=$(cat .passwd)
 
if test -z "${1}"; then
    echo "USAGE : $0 [password]"
    exit 1
fi
 
if test $PASS -eq ${1} 2>/dev/null; then
    echo "Well done you can validate the challenge with : $PASS"
else
    echo "Try again ,-)"
fi
 
exit 0
