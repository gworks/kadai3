#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}
#########
# TEST3 #
#########
echo "二つ目の引数が数字ではありません" > $tmp-ans
./16445128.sh 1 b > $tmp-out || ERROR_EXIT "TEST2-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-2"

echo test3 is OK
rm -f $tmp-*
exit 0
