require "spec_helper"
require "in_that_case/convention"

module TestCase
  extend InThatCase::Convention
end

# To test .representation, .convert must be implemented
module RepresentationCase
  extend InThatCase::Convention

  def self.convert(words)
    words.join("%")
  end
end

describe InThatCase::Convention do
  it "has a short name" do
    expect(TestCase.short_name).to eq "test"
  end

  it "has a representation of itself" do
    expect(RepresentationCase.representation).to eq "representation%case"
  end

  it "throws an error unless the including module implements its required methods" do
    expect { TestCase.extract_words("in%that%case") }.to raise_error(NotImplementedError)
    expect { TestCase.matches?("in%that%case") }.to raise_error(NotImplementedError)
    expect { TestCase.convert(%w[in that case]) }.to raise_error(NotImplementedError)
  end
end
