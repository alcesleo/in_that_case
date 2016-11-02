require "in_that_case/version"

require "in_that_case/conventions/camel_case"
require "in_that_case/conventions/snake_case"

module InThatCase
  CONVENTIONS = [
    Conventions::CamelCase,
    Conventions::SnakeCase,
  ]

  UnrecognizedConvention = Class.new(StandardError)

  module_function

  def convert(input, to_convention, from_convention = nil)
    from_convention ||= CONVENTIONS.detect { |c| c.matches?(input) } or fail UnrecognizedConvention
    words = from_convention.extract_words(input)
    to_convention.convert(words)
  end
end
