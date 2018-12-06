#!/bin/sh

tests="\
test_installation
"

count=0
errors=0

for t in ${tests}
do
    count=$(($count + 1))

    cd "$t" && ./test

    [ "x$?" != "x0" ] && {
        errors=$(($errors + 1))
        printf "Test failed: %s\n" "$t"
    }
done 

printf "--------------------------\n"
printf "Number of passed tests: %s\n" $(($count - $errors))
printf "Number of failed tests: %s\n" $(($errors))
printf "--------------------------\n"
