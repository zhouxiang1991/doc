import {
  CronJob,
} from 'cron';
import splitLogs from '../methods/splitLog.js';

export default new CronJob({
  cronTime: '0 0 0 * * *',
  async onTick() {
    console.log('分割日志');
    splitLogs();
  },
  start: false,
  timeZone: 'Asia/Shanghai',
});
