cc = require 'coffee-coverage'
fs = require 'fs'
mkdirp = require 'mkdirp'
path = require 'path'

module.exports = (grunt) ->
    grunt.registerMultiTask 'coffeeCoverage', ->
        instrumentor = new cc.CoverageInstrumentor
        options = @options()

        instrument = =>
            for files in @files
                for file in files.src
                    result = instrumentor.instrument file, files.dest, options
                    grunt.log.writeln "Annotated #{result.lines} lines."

        if options.initFile?
            done = @async()
            initPath = path.dirname options.initFile
            mkdirp initPath, (err) =>
                grunt.fail.warn err if err?
                options.initFileStream = fs.createWriteStream options.initFile
                options.initFileStream.on 'open', =>
                    instrument()
                    options.initFileStream.end()
                    done()
        else instrument()
