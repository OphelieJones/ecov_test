require 'rails_helper'

RSpec.describe Network, type: :model do
  it 'should persist a network' do
    Network.create(current_network: 'Toulouse')
    Network.create(current_network: 'Paris')

    expect(Network.count).to eq(2)
  end
end

