module.exports = (grunt) ->
    grunt.initConfig
        coffeeCoverage:
            options:
                initFile: 'tasks-cov/init.js'
            all:
                src: 'tasks'
                dest: 'tasks-cov'
        coffeelint:
            options: indentation: value: 4
            all: src: 'tasks/*.coffee'
        simplemocha:
            options: reporter: 'spec'
            all: src: 'test/*.coffee'
        clean:
            all: 'tasks-cov'

    grunt.loadTasks 'tasks'
    grunt.loadNpmTasks 'grunt-coffeelint'
    grunt.loadNpmTasks 'grunt-simple-mocha'
    grunt.loadNpmTasks 'grunt-contrib-clean'
    grunt.registerTask 'default', [
        'clean',
        'coffeeCoverage',
        'simplemocha',
        'coffeelint',
        'clean'
    ]
