assert = require 'assert'
fs = require 'fs'

describe 'Task coffeeCoverage', ->
    it 'should instrument coffeeCoverage.coffee', (done) ->
        file = "#{__dirname}/../tasks-cov/coffeeCoverage.js"
        fs.readFile file, 'utf-8', (err, data) ->
            return done err if err
            assert.ok data.indexOf('_$jscoverage["coffeeCoverage.coffee"]') >= 0
            done()
    it 'should generate an init file', (done) ->
        file = "#{__dirname}/../tasks-cov/init.js"
        fs.stat file, (err, stats) ->
            assert.ok stats.isFile()
            done()
