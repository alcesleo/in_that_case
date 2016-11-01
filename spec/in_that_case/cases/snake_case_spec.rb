require "spec_helper"
require "in_that_case/cases/snake_case"

RSpec.describe InThatCase::Cases::SnakeCase do
  it "reports its name" do
    expect(subject.to_s).to eq "snake_case"
  end

  it "detects snake_case" do
    expect(subject.detect("snake_case")).to eq true
    expect(subject.detect("camelCase")).to eq false
  end

  it "gets the words" do
    expect(subject.extract_words("in_that_case")).to eq %w[in that case]
  end

  it "combines words to snake_case" do
    expect(subject.convert(%w[in that case])).to eq "in_that_case"
  end
end
