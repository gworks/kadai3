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

#########
# TEST2 #
#########
echo "最初の引数が数字ではありません" > $tmp-ans
./16445128.sh a 1 > $tmp-out || ERROR_EXIT "TEST2-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST2-2"
echo test2 is OK

#########
# TEST3 #
#########
echo "二つ目の引数が数字ではありません" > $tmp-ans
./16445128.sh 1 b > $tmp-out || ERROR_EXIT "TEST3-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST3-2"
echo test3 is OK

#########
# TEST4 #
#########
echo "最初の引数が自然数ではありません" > $tmp-ans
./16445128.sh 0 2 > $tmp-out || ERROR_EXIT "TEST4-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST4-2"
echo test4 is OK

#########
# TEST5 #
#########
echo "二つ目の引数が自然数ではありません" > $tmp-ans
./16445128.sh 2 0 > $tmp-out || ERROR_EXIT "TEST5-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST5-2"
echo test5 is OK

#########
# TEST6 #
#########
echo "10" > $tmp-ans
./16445128.sh 10 20 > $tmp-out || ERROR_EXIT "TEST6-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST6-2"
echo test6 is OK

#########
# TEST7 #
#########
echo "6" > $tmp-ans
./16445128.sh 12 18 > $tmp-out || ERROR_EXIT "TEST7-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST7-2"
echo test7 is OK

rm -f $tmp-*
exit 0

