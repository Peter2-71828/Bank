require './lib/bank.rb'

class Account

  attr_reader :balance, :history

  def initialize(balance = 0, history = Bank.new)
    @balance = balance
    p @history = history
  end

  def add(amount, date)
    @balance += amount
    @history.new(date, 'credit', sprintf('%.2f', amount), sprintf('%.2f', @balance))
  end

  def reduce(amount, date)
    @balance -= amount
    @history.new(date, 'debit', sprintf('%.2f', amount), sprintf('%.2f', @balance))
  end

end
