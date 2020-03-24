require './lib/bank.rb'

class Account

  attr_reader :balance, :history

  def initialize(balance = 0, history = Bank.new)
    @balance = balance
    @history = history
  end

  def add(amount, date)
    @balance += amount
    @history.new(date, 'credit', two_dp(amount), two_dp(@balance))
  end

  def reduce(amount, date)
    @balance -= amount
    @history.new(date, 'debit', two_dp(amount), two_dp(@balance))
  end

  def two_dp(value)
    format('%<value>.2f', value: value)
  end

end
