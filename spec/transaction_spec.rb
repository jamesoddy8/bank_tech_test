require "transaction"

describe Transaction do
  transaction = { date: '22/04/2020', credit: 1000, debit: 40000, balance: 39950 }
  subject { described_class.new(transaction) }

  it 'creates a new transaction' do
    expect(subject).to be_instance_of(described_class)
  end

  it 'has a date value of 22/04/2020' do
    expect(subject.date).to eq('22/04/2020')
  end

  it 'has a credit of 1000' do
    expect(subject.credit).to eq(1000)
  end

  it 'has a debit of 40000' do
    expect(subject.debit).to eq(40000)
  end

  it 'has a balance value of 50' do
    expect(subject.balance).to eq(39950)
  end
end
