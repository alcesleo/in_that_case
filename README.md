# InThatCase [![Build Status](https://travis-ci.org/alcesleo/in_that_case.svg?branch=master)](https://travis-ci.org/alcesleo/in_that_case)

`itc` aims to be a well behaved UNIX tool to convert between different
capitalization conventions.

I wrote a blog post about it [here](http://alcesleo.github.io/2016/11/03/exemplary-design/).

## Usage

```bash
$ itc --snake inThatCase
in_that_case

$ echo in_that_case | itc --camel
inThatCase

# See all the available options in the help
itc --help
```

## Supported conventions

* `snake_case`
* `camelCase`
* `PascalCase`
* `dash-case`

## Development

```bash
# run the tests
bundle exec rspec

# run the executable
exe/itc --help

# install the executable, this makes it available without the full path
rake install
itc --help
```
