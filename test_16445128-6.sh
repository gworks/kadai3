#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}
#########
# TEST6 #
#########
echo "10" > $tmp-ans
./16445128.sh 10 20 > $tmp-out || ERROR_EXIT "TEST6-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST6-2"

echo test6 is OK
rm -f $tmp-*
exit 0

