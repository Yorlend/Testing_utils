#!/bin/sh

echo INPUT NUMBER OF POSITIVE TESTS:
read POS
echo INPUT NUMBER OF NEGATIVE TESTS:
read NEG

for i in $(seq 1 $POS)
do
    IN=$(printf "./func_tests/pos_%02d_in.txt" $i)
    OUT=$(printf "./func_tests/pos_%02d_out.txt" $i)
    ./a.exe < $IN > temp.txt
    if [ $? == 1 ]
    then
        printf "TEST pos_%02d failed\n" $i
    else
        printf "TEST pos_%02d passed\n" $i
    fi
done

echo

for i in $(seq 1 $NEG)
do
    IN=$(printf "./func_tests/neg_%02d_in.txt" $i)
    OUT=$(printf "./func_tests/neg_%02d_out.txt" $i)
    ./a.exe < $IN > temp.txt
    ERROR=$?
    if [ `cat $OUT` == $ERROR ]
    then
        printf "TEST neg_%02d passed\n" $i
    else
        printf "TEST neg_%02d failed\n" $i
    fi
done

gcov main.c