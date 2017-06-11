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

echo 5 > $tmp-ans
./15745201 15 35 > $tmp-out || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0
