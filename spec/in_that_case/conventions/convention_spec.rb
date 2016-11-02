require "spec_helper"
require "in_that_case/conventions/convention"

module TestCase
  extend InThatCase::Conventions::Convention

  def self.convert(words)
    words.join("%")
  end
end

describe InThatCase::Conventions::Convention do
  it "has a short name" do
    expect(TestCase.short_name).to eq "test"
  end

  it "has a representation of itself" do
    expect(TestCase.representation).to eq "test%case"
  end
end
