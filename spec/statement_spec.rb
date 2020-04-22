require "statement"

describe Statement do
    describe "statement" do
      subject{ described_class.new(50) }
      it "creates a new statement" do
        expect(subject).to be_instance_of(described_class)
      end
    end
   
    # describe "create a new transaction" do
    #   it "statement should show new transaction" do
    #     subject.log << transaction
    #     expect(subject.record).to eq [transaction]
    #   end
    # end
end
