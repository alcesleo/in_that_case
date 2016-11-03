module InThatCase
  module Convention
    def extract_words(str)
      fail NotImplementedError
    end

    def matches?(str)
      fail NotImplementedError
    end

    def convert(words)
      fail NotImplementedError
    end

    def short_name
      convention_words.first
    end

    def representation
      convert(convention_words)
    end

    private

    def convention_words
      [self.name.split("::").last.gsub("Case", "").downcase, "case"]
    end
  end
end
