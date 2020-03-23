require 'client'

describe Client do

  it 'client should have deposit method' do
    expect(subject).to respond_to(:deposit)
  end

  it 'client should have withdrawl method' do
    expect(subject).to respond_to(:withdrawal)
  end

end
