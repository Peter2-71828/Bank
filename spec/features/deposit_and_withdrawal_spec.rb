require 'client'
require 'account'

describe Client do

  it 'client.deposit(amount) should increase balance in acount by amount' do
    subject = Client.new
    subject.deposit(100)
    expect{subject.deposit(30)}.to output(/Balance: 130/).to_stdout
  end

  it 'client.withdrawal(amount) should decrease balance in acount by amount' do
    subject = Client.new
    subject.deposit(100)
    expect{subject.withdrawal(30)}.to output(/Balance: 70/).to_stdout
  end

end
