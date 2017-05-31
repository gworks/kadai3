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
echo "最初の引数が数字ではありません" > $tmp-ans
./16445128.sh a 1 > $tmp-out || ERROR_EXIT "TEST2-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-2"

echo test2 is OK
rm -f $tmp-*
exit 0
