require 'client'
require 'account'

describe Client do

  subject(:client) do
    test = Client.new
    test.deposit(100)
    return test
  end

  it 'client.deposit(amount) should increase balance in acount by amount' do
    expect { client.deposit(30) }.to output(/Balance: 130/).to_stdout
  end

  it 'client.withdrawal(amount) should decrease balance in acount by amount' do
    expect { client.withdrawal(30) }.to output(/Balance: 70/).to_stdout
  end

end
