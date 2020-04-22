require "statement"

describe Statement do

  context "new statement" do
    describe "#initialize" do
      it "should be empty" do
        expect(subject.log).to eq []
      end
    end
  end
end
