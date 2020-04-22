require_relative 'statement'
require_relative 'transaction'
require_relative 'transaction_history'

class Account
  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = 0
    @transactions = TransactionHistory.new
  end

  def deposit(amount, date = Time.new.strftime('%d/%m/%Y'))
    @balance += amount
    details = { date: date, credit: amount, debit: 0, balance: @balance }
    update_history(Transaction.new(details))
  end

  def withdraw(amount, date = Time.new.strftime('%d/%m/%Y'))
    if @balance - amount > 0
      @balance -= amount
      details = { date: date, credit: amount, debit: 0, balance: @balance }
      update_history(Transaction.new(details))
    else
      puts "Error accessing funds: you tried to withdraw £#{amount}, with £#{@balance} in your account"
    end
  end

  def print_statement
    Statement.new(@transactions.transactions).print
  end

  private

  def update_history(transaction)
    @transactions.log(transaction)
  end
end 
