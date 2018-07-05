import {
  execSync,
} from 'child_process';
import {
  statSync,
} from 'fs';

export default () => {
  const out = statSync('./logs/out/out.log');
  if (
    out
    && out.size
  ) {
    execSync('cp ./logs/out/out.log ./logs/out/$(date +"%Y-%m-%d").log');
    execSync('> ./logs/out/out.log');
  }
  const err = statSync('./logs/err/err.log');
  if (
    err
    && err.size
  ) {
    execSync('cp ./logs/err/err.log ./logs/err/$(date +"%Y-%m-%d").log');
    execSync('> ./logs/err/err.log');
  }
};
