class Statement

  def initialize(log)
    @log = log
  end

  def print
    puts ' date          || credit || debit || balance'
    puts '--------------------------------------------'
    @transactions.each do |transaction|
      puts "#{transaction.date}    || #{transaction.credit}    || #{transaction.debit}    || #{transaction.balance}"
    end
  end
end
