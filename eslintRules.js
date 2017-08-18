module.exports = {
  env: {
    es6: true,
    node: true,
  },
  parser: 'babel-eslint',
  parserOptions: {
    sourceType: 'module',
    allowImportExportEverywhere: true,
    codeFrame: false,
    ecmaVersion: 6,
  },
  rules: {
    // 取消import限制
    'import/no-extraneous-dependencies': 0,
    'import/no-unresolved': 0,
    'import/extensions': 0,
    'import/no-dynamic-require': 0,

    // 启用console.log
    'no-console': [
      1,
      {
        allow: ['log'],
      },
    ],

    // 可以使用continue;
    'no-continue': 0,

    // 'object-shorthand': 1,

    // 可以使用++/--
    // 'no-plusplus': 0,

    // 变量名中可以使用_
    'no-underscore-dangle': 0,

    // 可以写没有其他方法的简单构造函数
    'no-useless-constructor': 0,

    // 可以修改函数参数但不能重新赋值函数参数
    'no-param-reassign': [
      2,
      {
        props: false,
      },
    ],

    // 可以在赋值语句中使用return
    'no-return-assign': 0,


    'arrow-parens': ['error', 'as-needed'],
    'arrow-body-style': 0,

    'no-alert': 0,

    // 缩进是2个空格,switch 也是2个空格
    indent: [
      'error',
      2,
      {
        SwitchCase: 1,
      },
    ],


    // 换行符, unix: '\n', window: '\r\n'
    'linebreak-style': [
      'error',
      'unix',
    ],

    // 字符串使用单引号
    quotes: [
      'error',
      'single',
    ],

    // 使用分号
    semi: [
      'error',
      'always',
    ],
    // 'no-shadow': 0,
    'no-unused-vars': 1,
    'no-restricted-syntax': [
      'error',
      'forOfStatement',
    ],
    'no-await-in-loop': 0,
    'global-require': 0,
    // 允许使用死循环
    'no-constant-condition': 1,
    'max-len': 1,
    'guard-for-in': 0,
  },
};
