coffeeCoverage = require "coffee-coverage"


module.exports = (grunt) ->
    grunt.registerMultiTask "coffeeCoverage", ->
        options = @options()
        instrumentor = new coffeeCoverage.CoverageInstrumentor

        @files.forEach (files) ->
            files.src.forEach (file) ->
                result = instrumentor.instrument file, files.dest, options
                grunt.log.writeln "Annotated #{result.lines} lines."
