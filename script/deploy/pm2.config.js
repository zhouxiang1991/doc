module.exports = {
  apps: [{
    name: '程序名',
    autorestart: false,
    script: __dirname + '/程序名/lib/index.js',
    // interpreter: __dirname + '/程序名/node_modules/.bin/babel-node',
    env: {
      // 环境变量
    },
  }],
};
