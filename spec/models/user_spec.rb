require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'should be paired to the current_network' do
    toulouse = Network.create(current_network: 'Toulouse')
    paris = Network.create(current_network: 'Paris')

    User.create(email: "david@email.com", network_id: paris.id)
    User.create(email: "peter@email.com", network_id: toulouse.id)

    expect(User.last.network_id).to eq(toulouse.id)
  end

  it 'current_network field should not be nil for a new user' do
    User.create(email: "peter@email.com")
    expect(User.last).to eq(nil)
  end
end
