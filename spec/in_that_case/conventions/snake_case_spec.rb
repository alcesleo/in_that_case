require "spec_helper"
require "in_that_case/conventions/snake_case"

RSpec.describe InThatCase::Conventions::SnakeCase do
  include_examples "convention"

  it "gets the words" do
    expect(described_class.extract_words("in_that_case")).to eq %w[in that case]
  end

  it "combines words to snake_case" do
    expect(described_class.convert(%w[in that case])).to eq "in_that_case"
  end
end
