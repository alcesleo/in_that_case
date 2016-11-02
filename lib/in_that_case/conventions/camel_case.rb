require "in_that_case/conventions/convention"

module InThatCase
  module Conventions
    module CamelCase
      extend Convention

      module_function

      def convert(words)
        result = words.take(1)
        result << words.drop(1).map(&:capitalize)
        result.join
      end

      def extract_words(str)
        str.split(/(?=[A-Z])/).map(&:downcase)
      end

      def matches?(str)
        !!(str =~ /\A[a-z]+([A-Z][a-z0-9]+)+\z/)
      end
    end
  end
end
