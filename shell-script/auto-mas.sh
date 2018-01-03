#!/bin/sh
git add .
git commit -m "$@"
git checkout master
git merge --no-ff -m "merge from feature/modify" feature/modify
git branch -d feature/modify
git push --all
git flow feature start modify
