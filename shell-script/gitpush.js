#!/bin/sh
yarn run compile
git add .
git commit -m "$@"
git push origin master
yarn run publish
