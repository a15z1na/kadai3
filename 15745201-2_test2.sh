#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
     echo "$1" >&2
     rm -f $tmp-*
     exit 1
}

#########
# TEST2 #
#########

echo "15745201-2 requires 2 string inputs" > $tmp-ans
./15745201-2 2 > $tmp-out || ERROR_EXIT "TEST2-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-2"

echo OK
rm -f $tmp-*
exit 0
