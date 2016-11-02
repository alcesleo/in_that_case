require "in_that_case/version"

# Require all convention files
Dir["lib/in_that_case/conventions/*.rb"].each do |convention|
  require File.join("in_that_case/conventions", File.basename(convention, File.extname(convention)))
end

module InThatCase
  CONVENTIONS = Conventions.constants.map { |c| Conventions.const_get(c) }

  UnrecognizedConvention = Class.new(StandardError)

  module_function

  def convert(input, to_convention, from_convention = nil)
    from_convention ||= CONVENTIONS.detect { |c| c.matches?(input) } or fail UnrecognizedConvention
    words = from_convention.extract_words(input)
    to_convention.convert(words)
  end
end
