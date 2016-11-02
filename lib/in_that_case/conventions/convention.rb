module InThatCase
  module Conventions
    module Convention
      module_function
      public

      def convention
        self.name.split("::").last.downcase
      end
    end
  end
end
