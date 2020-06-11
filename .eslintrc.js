/*
 * https://kkznch.hatenablog.com/entry/2019/11/04/181251
 * https://davidtranscend.com/blog/configure-eslint-prettier-vim/
 */

module.exports = {
  'env': {
    'browser': true,
    'commonjs': true,
    'es2020': true,
    'node': true,
    'jquery': true,
  },
  'extends': [
    'google',
    // 'eslint:recommended',
    'prettier',
  ],
  'plugins': [
    'prettier',
    'jquery',
  ],
  'parserOptions': {
    'ecmaVersion': 11,
  },
  'rules': {
    'prettier/prettier': 'error',
    'new-cap': 'warn',
  },
};
