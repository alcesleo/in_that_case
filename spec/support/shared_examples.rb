shared_examples "convention" do
  other_conventions = InThatCase::CONVENTIONS - [described_class]

  describe ".matches?" do
    it "matches #{described_class.representation}" do
      expect(described_class.matches?(described_class.representation)).to eq true
    end

    other_conventions.each do |convention|
      it "does not match #{convention.representation}" do
        expect(described_class.matches?(convention.representation)).to eq false
      end
    end
  end
end
