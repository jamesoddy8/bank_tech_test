class Statement

  def initialize(log)
    @log = log
  end

  def print
    puts ' date          || credit || debit || balance'
    puts '--------------------------------------------'
    @log.each do |log|
      puts "#{log.date}     || #{log.credit}   || #{log.debit}   || #{log.balance}"
    end
  end
end
