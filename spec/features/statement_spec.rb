require 'client'
require 'account'
require 'bank'

describe Client do

  it 'client.statment should return account statment' do
    subject = Client.new(Account.new(3000))
    subject.withdrawal(500, '14/01/2012')
    subject.deposit(300)
    expect{subject.statement}.to output(/2012/).to_stdout
    expect{subject.statement}.to output(/500/).to_stdout
    expect{subject.statement}.to output(/2500/).to_stdout
    expect{subject.statement}.to output(/2800/).to_stdout
  end

end
