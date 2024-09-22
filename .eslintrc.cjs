'use strict';

module.exports = {
  overrides: [
    {
      files: ['*.{js,ts,mjs,cjs}'],
      plugins: ['ember'],
      parser: '@typescript-eslint/parser',
      extends: ['eslint:recommended', 'plugin:ember/recommended'],
    },
    {
      files: ['*.gts'],
      parser: 'ember-eslint-parser',
      plugins: ['ember'],
      extends: ['eslint:recommended', 'plugin:ember/recommended', 'plugin:ember/recommended-gts'],
    },
    {
      files: ['*.gjs'],
      parser: 'ember-eslint-parser',
      plugins: ['ember'],
      extends: ['eslint:recommended', 'plugin:ember/recommended', 'plugin:ember/recommended-gjs'],
    },
    // test files
    {
      files: ['tests/**/*-test.{js,ts}'],
      plugins: ['ember'],
      parser: '@typescript-eslint/parser',
      extends: ['eslint:recommended', 'plugin:qunit/recommended'],
    },
    {
      files: ['tests/**/*-test.{gjs,gts}'],
      parser: 'ember-eslint-parser',
      plugins: ['ember'],
      extends: ['eslint:recommended', 'plugin:ember/recommended', 'plugin:ember/recommended-gts'],
    },
    {
      files: ['*.gts', '*.ts'],
      plugins: ['no-relative-import-paths'],
      settings: {
        node: {
          tryExtensions: ['.gts', '.ts', '.js', '.module.css', '.css'],
        },
      },
      rules: {
        'no-relative-import-paths/no-relative-import-paths': [
          'warn',
          { allowSameFolder: true, rootDir: 'app', prefix: 'discord-clone' },
        ],
        'n/file-extension-in-import': [
          'error',
          'always',
          {
            '.css': 'always',
            '.module.css': 'always',
            '.gts': 'never',
            '.ts': 'never',
            '.js': 'never',
          },
        ],
      },
    },

    // node files
    {
      files: [
        './.eslintrc.{js,cjs}',
        './.prettierrc.{js,cjs}',
        './.stylelintrc.{js,cjs}',
        './.template-lintrc.{js,cjs}',
        './ember-cli-build.js',
        './testem.js',
        './blueprints/*/index.js',
        './config/**/*.js',
        './lib/*/index.js',
        './server/**/*.js',
        '*.mjs',
        '*.cjs',
      ],
      env: {
        browser: false,
        node: true,
      },
      extends: ['plugin:n/recommended'],
    },
  ],
};
