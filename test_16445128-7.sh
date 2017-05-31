#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}
#########
# TEST7 #
#########
echo "6" > $tmp-ans
./16445128.sh 12 18 > $tmp-out || ERROR_EXIT "TEST7-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST7-2"

echo test7 is OK
rm -f $tmp-*
exit 0

