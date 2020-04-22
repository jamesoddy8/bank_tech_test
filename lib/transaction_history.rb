class TransactionHistory
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def log(transaction)
    @transactions.push(transaction)
  end 

end
