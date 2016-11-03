module InThatCase
  class CLI
    ConventionOption = Struct.new(:convention, :argument, :documentation)

    attr_reader :conventions, :option_align_width

    def initialize(conventions, option_align_width)
      @conventions        = conventions
      @option_align_width = option_align_width
    end

    def convention_option_list
      "(#{convention_options.map(&:argument).join(" | ")})"
    end

    def option_documentation
      result = convention_options.map { |ca|
        [ca.argument, ca.documentation]
      }

      result.unshift(["-h --help", "Show this screen."])

      result.map { |arg, doc|
        ["  ", arg.ljust(option_align_width), doc].join
      }.join("\n")
    end

    def to_convention(args)
      convention_options.detect { |ca| args.fetch(ca.argument) }.convention
    end

    private

    def convention_options
      conventions.map { |c|
        ConventionOption.new(c, "--#{c.short_name}", "Convert to #{c.representation}.")
      }
    end
  end
end
