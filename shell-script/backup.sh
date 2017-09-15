#!/bin/sh
cd /Users/zhouxiang
pwd
cp -rf .vimrc .zshrc /Users/zhouxiang/doc/private
cd /Users/zhouxiang/doc/private
git add .
git commit -m "backup"
git push --all
echo done!
