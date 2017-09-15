mkdir $@
cd $@
cp /Users/zhouxiang/doc/private/.babelrc .
cp /Users/zhouxiang/doc/private/.gitignore .
cp /Users/zhouxiang/doc/private/package.json .
cp /Users/zhouxiang/doc/private/.eslintrc.js .
cp /Users/zhouxiang/doc/private/.eslintignore .
cp /Users/zhouxiang/doc/private/jsdoc.js .
cp /Users/zhouxiang/doc/private/index.js .
cp -rf /Users/zhouxiang/doc/private/script .
cp -rf /Users/zhouxiang/doc/private/test .
cp -rf /Users/zhouxiang/doc/private/lib .
touch main.js
npm install
git flow init -d
