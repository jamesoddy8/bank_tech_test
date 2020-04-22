require 'transaction_history'

describe TransactionHistory do
  subject { described_class.new }

  it 'displays an empty balance at start' do
      expect(subject.transactions).to eq([])
  end

  it 'creates a new transaction history' do
    expect(subject).to be_instance_of(described_class)
  end
end
