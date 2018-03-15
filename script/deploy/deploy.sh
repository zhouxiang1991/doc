rm -rf ./lib
./node_modules/.bin/babel ./src -d ./lib
tar czf ./script/deploy/程序名.tar lib/ package.json
rm -rf ./lib
cd ./script/deploy
scp 程序名.tar run.sh pm2.config.js install.sh 用户名@IP:/home/zhouxiang/程序名/
rm 程序名.tar
# 登陆
ssh 用户名@IP
