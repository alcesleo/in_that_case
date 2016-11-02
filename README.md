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
```

## Supported conventions

* `snake_case`
* `camelCase`
* `PascalCase`
