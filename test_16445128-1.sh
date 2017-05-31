#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}
#########
# TEST1 #
#########
echo "requires 2 string inputs" > $tmp-ans
./16445128.sh 2> $tmp-err && ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-err || ERROR_EXIT "TEST1-2"

echo test1 is OK
rm -f $tmp-*
exit 0

