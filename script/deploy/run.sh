rm -rf logs
mkdir logs
pm2 delete 程序名
pm2 start pm2.config.js
pm2 log 程序名
