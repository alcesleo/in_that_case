require "open3"

describe "itc executable" do
  it "converts any case to the case specified as an argument" do
    expect(`./exe/itc --snake inThatCase`).to eq "in_that_case\n"
    expect(`./exe/itc --camel in_that_case`).to eq "inThatCase\n"
  end

  it "it accepts piped input" do
    expect(`echo inThatCase | ./exe/itc --snake`).to eq "in_that_case\n"
  end

  it "displays an error when given an unrecognized convention" do
    output, status = Open3.capture2e("./exe/itc --snake 0inthatcase")
    expect(output).to match /unrecognized convention/i
    expect(status.exitstatus).to eq 1
  end
end
