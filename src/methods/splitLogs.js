import {
  execSync,
} from 'child_process';

export default () => {
  execSync('mv ./logs/out.log ./logs/$(date +"%Y-%m-%d").log');
  execSync('touch ./logs/out.log');
};
