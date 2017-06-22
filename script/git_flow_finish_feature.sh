#!/bin/sh
git checkout develop
git merge --no-ff -m "merge from $@" $@
git branch -d $@
