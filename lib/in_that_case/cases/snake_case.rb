module InThatCase
  module Cases
    class SnakeCase
      def to_s
        "snake_case"
      end

      def convert(words)
        words.join("_")
      end

      def extract_words(str)
        str.split("_")
      end

      def detect(str)
        !!(str =~ /\A[a-z]+(_[a-z0-9]+)+\z/)
      end
    end
  end
end
