require "bank"

describe Bank do
  let(:bank) { Bank.new }
  context "new accounts have a default balance of zero" do
    it "returns 0" do
      expect(subject.balance).to eq(0)
    end
  end

  describe "#deposit" do
    context "can deposit money" do
      it { is_expected.to respond_to(:deposit).with(1).argument }
    end
  end 
end


#   describe ".deposit" do
#     context "given an empty string" do
#       it "returns zero" do
#         expect(Bank.add("")).to eq(0)
#       end
#     end
#   end
#   describe ".withdraw" do
#     context "with" do
#       it "returns "
#     end
#   end
#   describe "balance" do
#
#   end
# end
