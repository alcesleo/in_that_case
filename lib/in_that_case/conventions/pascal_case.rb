require "in_that_case/convention"

module InThatCase
  module Conventions
    module PascalCase
      extend Convention

      module_function

      def convert(words)
        words.map(&:capitalize).join
      end

      def extract_words(str)
        str.split(/(?=[A-Z])/).map(&:downcase)
      end

      def matches?(str)
        !!(str =~ /\A[A-Z][a-z]+([A-Z][a-z0-9]+)+\z/)
      end
    end
  end
end
