const common = [
  '--require-module ts-node/register',
  '--require-module tsconfig-paths/register',
  '--require src/steps/**/*.ts',
  '--require src/support/**/*.ts',
  '--format progress',
  '--format json:reports/cucumber-report.json',
  'tests/features/*.feature',
  'tests/features/**/*.feature'
].join(' ');

module.exports = {
  default: common
};
