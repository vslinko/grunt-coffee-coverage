# grunt-coffee-coverage

> Compiles .coffee files to .js files, and adds JSCoverage style instrumnetation
> for the original coffee script source.

## Getting Started

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out
the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains
how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as
install and use Grunt plugins. Once you're familiar with that process, you may
install this plugin with this command:

```shell
npm install grunt-coffee-coverage --save-dev
```

One the plugin has been installed, it may be enabled inside your Gruntfile with
this line of CoffeeScript:

```coffeescript
grunt.loadNpmTasks "grunt-coffee-coverage"
```

## The "coffeeCoverage" task

### Overview
In your project's Gruntfile, add a section named `coffeeCoverage` to the data
object passed into `grunt.initConfig()`.

```coffeescript
grunt.initConfig
    coffeeCoverage:
        options: # Task-specific options go here.
        your_target: # Target-specific file lists and/or options go here.
```

### Options

#### options.coverageVar
Type: `String`
Default value: `"_$jscoverage"`

Set the name to use in the instrumented code for the coverage variable.

#### options.exclude
Type: `Array`
Default value: `["node_modules", ".git"]`

Any file or directory which is in this list will be ignored. Note that this
field is case sensitive.

#### options.initfile
Type: `String`
Default value: `null`

Write all global initialization out to this file.

#### options.path
Type: `String`
Default value: `"none"`

Specify how to show the path for each filename in the instrumented output. If
value is `relative`, then the relative path will be written to each file. If
value is `abbr`, then we replace each directory in the path with its first
letter. The default is `none` which will write only the filename with no path.

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style.
Add unit tests for any new or changed functionality. Lint and test your code
using [Grunt](http://gruntjs.com/).
