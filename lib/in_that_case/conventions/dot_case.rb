require "in_that_case/convention"

module InThatCase
  module Conventions
    module DotCase
      extend Convention

      module_function

      def convert(words)
        words.join(".")
      end

      def extract_words(str)
        str.split(".")
      end

      def matches?(str)
        !!(str =~ /\A[a-z]+(\.[a-z0-9]+)+\z/)
      end
    end
  end
end
