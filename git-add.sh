#!/bin/bash

if [ -e $1 ]; then

git hash-object -w $1

git update-index -add $1

fi