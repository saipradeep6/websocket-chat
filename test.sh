#!/bin/sh

if git log --stat -1 | grep -E 'test.sh'; then
    play compile
    exit
elif ! git log --stat -1 | grep -E 'test.sh'; then
    play test
else
    exit
fi
