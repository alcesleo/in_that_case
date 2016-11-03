require "spec_helper"
require "in_that_case/cli"

describe InThatCase::CLI do
  let(:test_conventions) {
    [InThatCase::Conventions::CamelCase, InThatCase::Conventions::SnakeCase]
  }

  subject { described_class.new(test_conventions, 15) }

  it "lists all known convention options" do
    expect(subject.convention_option_list).to eq "(--camel | --snake)"
  end

  it "returns the longer documentation for all options" do
    expect(subject.option_documentation).to eq <<-DOC.chomp
  -h --help      Show this screen.
  --camel        Convert to camelCase.
  --snake        Convert to snake_case.
    DOC
  end

  it "chooses the correct convention based on command line arguments" do
    fake_args = {
      "--snake" => false,
      "--camel" => true,
      "--help" => false,
    }
    expect(subject.to_convention(fake_args)).to eq InThatCase::Conventions::CamelCase
  end
end
