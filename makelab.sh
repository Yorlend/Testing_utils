echo LAB:
read LAB
echo PROBLEM NUM:
read NUM
echo VARIANT:
read VAR

FILE=$(printf "lab_%02d_%02d_%02d" $LAB $NUM $VAR)
mkdir $FILE
cp makefile make_tests.sh test.sh ./$FILE/
touch ./$FILE/main.c
mkdir ./$FILE/func_tests