module.exports = {
  apps: [{
    name: '程序名',
    autorestart: false,
    error_file: './logs/err.log',
    out_file: './logs/out.log',
    merge_logs: true,
    log_date_format: 'YYYY-MM-DD HH:mm:ss',
    script: __dirname + '/程序名/lib/index.js',
    env: {
      // 环境变量
    },
  }],
};
