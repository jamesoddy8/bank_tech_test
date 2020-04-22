class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount, date = Time.new.strftime('%d/%m/%Y'))
    @balance += amount
  end

  def withdraw(amount, date = Time.new.strftime('%d/%m/%Y'))
    @balance -= amount
  end

end
