#!/bin/sh

if { [ git log --stat -1 | grep 'README' ]; || [ git log --stat -1 | grep 'index.scala.html' ]; }; then
    play test
else
    exit
fi
