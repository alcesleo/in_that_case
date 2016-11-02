require "spec_helper"
require "in_that_case/conventions/convention"

module TestCase
  extend InThatCase::Conventions::Convention

  def self.convert(words)
    words.join("%")
  end
end

describe TestCase do
  it "has a name" do
    expect(described_class.convention).to eq "dromedary"
  end

  it "has a representation of itself" do
    expect(described_class.representation).to eq "dromedary%case"
  end
end
