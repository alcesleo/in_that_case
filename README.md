# InThatCase

`itc` aims to be a well behaved UNIX tool to convert between different
capitalization conventions.

## Usage

```bash
$ itc --snake inThatCase
in_that_case

# Use a trailing - to read from stdin
$ echo in_that_case | itc --camel -
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
