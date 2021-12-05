require 'rails_helper'

RSpec.describe Ride, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'should be paired to the current_network' do
    nantes = Network.create(current_network: 'Nantes')
    lyon = Network.create(current_network: 'Lyon')

    Ride.create(departure: "ici", arrival: "la", network_id: nantes.id)
    Ride.create(departure: "la", arrival: "ici", network_id: lyon.id)

    expect(Ride.last.network_id).to eq(lyon.id)
  end

  it 'current_network field should not be nil for a new ride' do
    Ride.create(departure: "la", arrival: "ici")
    expect(Ride.last).to eq(nil)
  end
end
