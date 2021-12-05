module Types
  class NetworkType < Types::BaseObject
    description "Network"
    field :id, Integer, null: false
    field :current_network, String, null: false
    field :users, [Types::UserType], null: true
    field :rides, [Types::RideType], null: true
  end
end
