require 'client'

describe Client do

  it 'client.deposit(amount) output new balance' do
    expect{subject.deposit(20)}.to output(/Balance: 20/).to_stdout
  end

  it 'client.withdrawl(amount) output new balance' do
    expect{subject.withdrawal(10)}.to output(/Balance: -10/).to_stdout
  end

  it 'client should have statement method' do
    expect(subject).to respond_to(:statement)
  end

end
