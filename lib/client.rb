require './lib/account.rb'

class Client

  def initialize(account = Account.new)
    @account = account
  end

  def deposit(amount)
    @account.add(amount)
    puts "Balance: #{@account.balance}"
  end

  def withdrawal(amount)
    @account.reduce(amount)
    puts "Balance: #{@account.balance}"
  end

  def statement

  end

end
