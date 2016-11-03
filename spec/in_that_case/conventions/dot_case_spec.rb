require "spec_helper"
require "in_that_case/conventions/dot_case"

RSpec.describe InThatCase::Conventions::DotCase do
  include_examples "convention"

  it ".extract_words" do
    expect(described_class.extract_words("in.that.case")).to eq %w[in that case]
  end

  it ".convert" do
    expect(described_class.convert(%w[in that case])).to eq "in.that.case"
  end
end
