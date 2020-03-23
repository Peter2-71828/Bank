require './lib/account.rb'

class Client

  def initialize(account = Account.new)
    @account = account
  end

  def deposit(amount, date = Time.now.strftime("%d/%m/%Y"))
    @account.add(amount, date)
    puts "Balance: #{@account.balance}"
  end

  def withdrawal(amount, date = Time.now.strftime("%d/%m/%Y"))
    @account.reduce(amount, date)
    puts "Balance: #{@account.balance}"
  end

  def statement
    @account.history.print_statement
  end

end
