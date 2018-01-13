mkdir $@
cd $@
cp /Users/zhouxiang/doc/private/.gitignore .
cp /Users/zhouxiang/doc/private/npm.json .
mkdir test
touch test/test.js
mkdir src
touch src/index.js
yarn install 
git flow init -d
