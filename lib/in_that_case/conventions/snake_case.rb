module InThatCase
  module Conventions
    module SnakeCase
      module_function

      def to_s
        "snake_case"
      end

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
