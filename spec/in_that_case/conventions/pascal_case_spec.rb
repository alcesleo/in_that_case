require "spec_helper"
require "in_that_case/conventions/pascal_case"

RSpec.describe InThatCase::Conventions::PascalCase do
  include_examples "convention"

  it "gets the words" do
    expect(described_class.extract_words("InThatCase")).to eq %w[in that case]
  end

  it "combines words to pascal_case" do
    expect(described_class.convert(%w[in that case])).to eq "InThatCase"
  end
end
