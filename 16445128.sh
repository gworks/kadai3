#!/bin/sh

# arguments check
if [ $# -lt 1 ]; then
  echo "requires 2 string inputs" 1>&2
  exit 1
fi

val1=$1
val2=$2

expr ${val1} + 1 > /dev/null 2>&1
if [ $? -eq 2 ] ; then
  echo "最初の引数が数字ではありません" 1>&2
  exit 1
fi
expr ${val2} + 1 > /dev/null 2>&1
if [ $? -eq 2 ] ; then
  echo "二つ目の引数が数字ではありません" 1>&2
  exit 1
fi

if [ 0 -eq "$val1" ]; then
  echo "最初の引数が自然数ではありません" 1>&2
  exit 1
fi
if [ "$val2" -eq 0 ]; then
  echo "二つ目の引数が自然数ではありません" 1>&2
  exit 1
fi



while [ 0 -ne "$val2" ]; do
    val3=`expr $val1 % $val2`
    val1=$val2
    val2=$val3
done

echo $val1

