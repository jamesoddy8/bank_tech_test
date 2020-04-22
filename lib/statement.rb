class Statement

  def initialize(transaction)
    @transaction = transaction
  end

  def print
    puts ' date          || credit || debit || balance'
    puts '--------------------------------------------'
    @transaction.each do |transaction|
      puts "#{transaction.date}     || #{transaction.credit}   || #{transaction.debit}   || #{transaction.balance}"
    end
  end
end
