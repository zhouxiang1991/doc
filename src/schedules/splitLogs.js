import {
  CronJob,
} from 'cron';
import splitLogs from '../methods/splitLogs.js';

export default new CronJob({
  cronTime: '0 0 * * * *',
  async onTick() {
   splitLogs();
  },
  start: false,
  timeZone: 'Asia/Shanghai',
});
