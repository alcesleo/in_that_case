require "spec_helper"
require "in_that_case/conventions/convention"

module TestCase
  extend InThatCase::Conventions::Convention

  def self.convert(words)
    words.join("%")
  end
end

describe TestCase do
  it "has a short name" do
    expect(described_class.short_name).to eq "test"
  end

  it "has a representation of itself" do
    expect(described_class.representation).to eq "test%case"
  end
end
