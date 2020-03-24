class Bank

  def initialize
    @statement = []
  end

  def new(date, type, amount, balance)
    transaction = { 'date' => date, 'credit' => '', 'debit' => '', 'balance' => balance }
    transaction[type] = amount
    @statement << transaction
  end

  def print_statement
    puts "date || credit || debit || balance"
    @statement.each { |transaction| puts transaction.values.join(' || ') }
  end

end
