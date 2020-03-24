require 'client'
require 'account'
require 'statement'

describe Client do

  subject do
    test = Client.new(Account.new(3000))
    test.withdrawal(500, '14/01/2012')
    test.deposit(300)
    return test
  end

  it 'client.statment should return account statment' do
    expect { subject.statement }.to output(/2012/).to_stdout
    expect { subject.statement }.to output(/500/).to_stdout
    expect { subject.statement }.to output(/2500/).to_stdout
    expect { subject.statement }.to output(/2800/).to_stdout
  end

end
