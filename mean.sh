#!/bin/bash

if [[ $# -eq 1 ]]; then
    0>f
elif [[ $# -eq 2 ]]; then
    f=$2
else
    echo "usage: $0 <column> [file.csv]" 1>&2
    exit 0
fi


tail -n +2 $f | cut -d , -f $1 | { sum=0; count=0; while read n; do
    sum=$(echo "$sum + $n" | bc -l)
    count=$(echo "$count + 1" | bc -l)
done

res=$(echo "$sum / $count" | bc -l)

if [[ $res == '' ]]; then
    echo "usage: $0 <column> [file]"
else
    echo $res
fi
}
