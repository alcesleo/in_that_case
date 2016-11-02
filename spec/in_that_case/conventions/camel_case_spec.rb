require "spec_helper"
require "in_that_case/conventions/camel_case"

RSpec.describe InThatCase::Conventions::CamelCase do
  include_examples "convention"

  it "gets the words" do
    expect(described_class.extract_words("inThatCase")).to eq %w[in that case]
  end

  it "combines words to camelCase" do
    expect(described_class.convert(%w[in that case])).to eq "inThatCase"
  end
end
