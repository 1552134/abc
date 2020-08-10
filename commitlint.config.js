module.exports = {
    extends: ['@commitlint/config-conventional'],
    rules: {
        'type-enum': [
            2,'always', [
                'feat',
                'fix',
                'release',
                'docs',
                'style',
                'refactor',
                'perf',
                'test',
                'chore',
                'revert',
                'ci',
                'build',
                'hotfix',
]],
    }
};
