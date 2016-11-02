require "spec_helper"
require "in_that_case"

describe InThatCase do
  it "has a version number" do
    expect(InThatCase::VERSION).not_to be nil
  end

  it "converts from a known case to an autodetected case" do
    expect(described_class.convert("inThatCase", InThatCase::Conventions::SnakeCase)).to eq "in_that_case"
  end
end
