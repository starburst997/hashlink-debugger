#!/bin/sh

FILE=hladapter.js

rm -f $FILE
haxe build.hxml

#if [ -f $FILE ]; then
#    rm -Rf node_modules
#    make deps
#fi