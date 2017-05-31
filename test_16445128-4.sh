#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}
#########
# TEST4 #
#########
echo "最初の引数が自然数ではありません" > $tmp-ans
./16445128.sh 0 2 > $tmp-out || ERROR_EXIT "TEST4-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST4-2"

echo test4 is OK
rm -f $tmp-*
exit 0

