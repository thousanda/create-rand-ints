#!/bin/bash

if [ $# -ne 1 ]; then
    echo "# how to use:"
    echo "\$ ./create-rand-ints.sh {natural_number}"
    echo
    echo "e.g.)"
    echo "\$ ./create-rand-ints.sh 3"
    echo "3"
    echo "3 1 2"
    echo "2 3 4"
    exit 1
fi
    
n=$1
slide=$(( $n / 2 ))
arr=$(seq $n | sort -R | tr '\n' ' ' | sed 's/ *$//')
samples=$(seq $(( $n + $slide )) | sort -R | head -n $n | tr '\n' ' ' | sed 's/ *$//')

echo $n
echo $arr
echo $samples
