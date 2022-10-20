#!/bin/bash


if [[ $# -ne 2 ]]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 0
fi

find $1 -size +$2c -exec rm {} ";" -print
