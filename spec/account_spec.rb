require 'account'

describe Account do
  describe '#initialize' do
    it 'should have a balance of zero' do
      expect(subject.balance).to eq(0)
    end
  end

  describe '#deposit' do
    subject { described_class.new }
    it 'can deposit money' do
      expect { subject.deposit(400) }
      .to change(subject, :balance).by(400)
    end
  end

  describe '#withdraw' do
    it 'can withdraw money' do
      expect { subject.deposit(1000) }
      .to change(subject, :balance).by(1000)
      expect { subject.withdraw(200) }
      .to change(subject, :balance).by(-200)
    end
  end

  it 'creates a new account' do
    expect(subject).to be_instance_of(described_class)
  end
end
