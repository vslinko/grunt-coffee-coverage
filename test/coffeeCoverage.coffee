assert = require "assert"
fs = require "fs"


describe "Task coffeeCoverage", ->
    it "should generage annotated javascript files", (callback) ->
        file = "#{__dirname}/../tasks-cov/coffeeCoverage.js"

        fs.readFile file, "utf-8", (err, data) ->
            return callback err if err

            assert.ok data.indexOf('_$jscoverage["coffeeCoverage.coffee"]') >= 0
            callback()
