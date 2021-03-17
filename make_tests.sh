#!/bin/sh

echo INPUT NUMBER OF POSITIVE TESTS:
read POS
echo INPUT NUMBER OF NEGATIVE TESTS:
read NEG

DIR="./func_tests/"

for i in $(seq 1 $POS)
do
    DIR_IN=$(printf "./func_tests/pos_%02d_in.txt" $i)
    DIR_OUT=$(printf "./func_tests/pos_%02d_out.txt" $i)
    touch $DIR_IN $DIR_OUT
done

for i in $(seq 1 $NEG)
do
    DIR_IN=$(printf "./func_tests/neg_%02d_in.txt" $i)
    DIR_OUT=$(printf "./func_tests/neg_%02d_out.txt" $i)
    touch $DIR_IN $DIR_OUT
done
touch ./func_tests/readme.md