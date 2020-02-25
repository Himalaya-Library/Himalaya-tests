#!/bin/sh

tests="\
test_FindHimalaya
test_installation
test_subproject
"

count=0
errors=0

for t in ${tests}
do
    count=$(($count + 1))

    printf "Executing: %s ... " "$t"
    ( cd "$t" && ./test > test.log 2>&1 ) && printf "OK" || {
        errors=$(($errors + 1))
        printf "FAILED"
    }
    printf "\n"
done 

printf -- "--------------------------\n"
printf "Number of passed tests: %s\n" $(($count - $errors))
printf "Number of failed tests: %s\n" $(($errors))
printf -- "--------------------------\n"
