#!/bin/sh

if git log --stat -1 | grep 'README'; then
    play test
else
    exit
fi
