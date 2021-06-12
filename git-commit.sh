#!/bin/bash

TREEOBJECT=`git write-tree`

HEADHASH=`git rev-parse HEAD`

COMMITOBJECT=`echo $1 | git commit-tree $TREEOBJECT -p $HEADHASH`

git update-ref HEAD $COMMITOBJECT