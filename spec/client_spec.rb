require 'client'

describe Client do

  it 'client should have deposit method' do
    expect(subject).to respond_to(:deposit)
  end

end
