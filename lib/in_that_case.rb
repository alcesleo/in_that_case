require "in_that_case/version"

require "in_that_case/conventions/camel_case"
require "in_that_case/conventions/snake_case"

module InThatCase
  CASES = [
    Conventions::CamelCase,
    Conventions::SnakeCase,
  ]
end
