require "account"

describe Account do

  context "new account" do
    describe "#initialize" do
      it "should have a balance of zero" do
        expect(subject.balance).to eq(0)
      end
    end

    describe "#deposit" do
        it "can deposit money" do
          account = Account.new
          account.deposit(400)
          expect(account.balance).to eq(400)
      end
    end

    describe "#withdraw" do
      it "can withdraw money" do
        account = Account.new
        account.deposit(1000)
        account.withdraw(200)
        expect(account.balance).to eq(800)
      end
    end

    describe "#balance" do
      it "can see balance" do
        account = Account.new
        account.deposit(200)
        expect(account.balance).to eq(200)
      end
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
