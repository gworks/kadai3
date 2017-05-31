#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}
#########
# TEST5 #
#########
echo "二つ目の引数が自然数ではありません" > $tmp-ans
./16445128.sh 2 0 > $tmp-out || ERROR_EXIT "TEST5-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST5-2"

echo test5 is OK
rm -f $tmp-*
exit 0

