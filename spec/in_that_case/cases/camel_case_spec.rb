require "spec_helper"
require "in_that_case/cases/camel_case"

RSpec.describe InThatCase::Cases::CamelCase do
  it "detects camelCase" do
    expect(subject.detect("camelCase")).to eq true
    expect(subject.detect("snake_case")).to eq false
  end

  it "gets the words" do
    expect(subject.extract_words("inThatCase")).to eq %w[in that case]
  end

  it "combines words to camelCase" do
    expect(subject.convert(%w[in that case])).to eq "inThatCase"
  end
end
