require "in_that_case/conventions/convention"

module InThatCase
  module Conventions
    module SnakeCase
      extend Convention

      module_function

      def convert(words)
        words.join("_")
      end

      def extract_words(str)
        str.split("_")
      end

      def matches?(str)
        !!(str =~ /\A[a-z]+(_[a-z0-9]+)+\z/)
      end
    end
  end
end
