describe "itc executable" do
  it "converts any case to the case specified as an argument" do
    expect(`./exe/itc --snake inThatCase`).to eq "in_that_case\n"
    expect(`./exe/itc --camel inThatCase`).to eq "inThatCase\n"
  end

  it "it accepts piped input" do
    expect(`echo inThatCase | ./exe/itc --snake -`).to eq "in_that_case\n"
  end
end
