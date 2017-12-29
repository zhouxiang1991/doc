mkdir $@
cd $@
# cp /Users/zhouxiang/doc/private/.babelrc .
cp /Users/zhouxiang/doc/private/.gitignore .
cp /Users/zhouxiang/doc/private/package.json .
# cp /Users/zhouxiang/doc/private/.eslintrc.js .
# cp /Users/zhouxiang/doc/private/.eslintignore .
# cp /Users/zhouxiang/doc/private/jsdoc.js .
mkdir src
cp -rf /Users/zhouxiang/doc/private/script .
cp -rf /Users/zhouxiang/doc/private/test .
cp -rf /Users/zhouxiang/doc/private/lib/* ./src
touch ./src/index.js
yarn install 
git flow init -d
# ncu -a
