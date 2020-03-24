require './lib/statement.rb'

class Account

  attr_reader :balance, :history

  def initialize(balance = 0, history = Statement.new)
    @balance = balance
    @history = history
  end

  def add(amount, date)
    @balance += amount
    @history.new(date, 'credit', round(amount), round(@balance))
  end

  def reduce(amount, date)
    @balance -= amount
    @history.new(date, 'debit', round(amount), round(@balance))
  end

  def round(value)
    format('%<value>.2f', value: value)
  end

end
