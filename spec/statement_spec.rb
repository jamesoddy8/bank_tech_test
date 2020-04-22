require "statement"

describe Statement do

  context "new statement" do
    describe "#initialize" do
      it "should be empty" do
        expect(subject.log).to eq []
      end
    end
  end 
    # describe "create a new transaction" do
    #   it "statement should show new transaction" do
    #     subject.log << transaction
    #     expect(subject.record).to eq [transaction]
    #   end
    # end
end
