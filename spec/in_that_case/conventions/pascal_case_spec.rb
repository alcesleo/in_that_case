require "spec_helper"
require "in_that_case/conventions/pascal_case"

RSpec.describe InThatCase::Conventions::PascalCase do
  include_examples "convention"

  it ".extract_words" do
    expect(described_class.extract_words("InThatCase")).to eq %w[in that case]
  end

  it ".convert" do
    expect(described_class.convert(%w[in that case])).to eq "InThatCase"
  end
end
