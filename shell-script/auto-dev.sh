#!/bin/sh
git add .
git commit -m "$@"
git checkout develop
git merge --no-ff -m "merge from feature/modify" feature/modify
git branch -d feature/modify
git push origin develop
git flow feature start modify
