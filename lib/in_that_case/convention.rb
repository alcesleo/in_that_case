module InThatCase
  module Convention
    module_function

    public

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
