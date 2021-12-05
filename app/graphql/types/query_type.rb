module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false, description: "An user"
    field :rides, [Types::RideType], null: false, description: "A ride"
    field :networks, [Types::NetworkType], null: false, description: "A network"

    def users
      current_network = context[:current_network]
      Rails.logger.info "TEST Current Network #{current_network}"
      User.all
      # User.where(network_id: current_network)
    end

    def rides
      current_network = context[:current_network]
      Ride.all
      # Ride.where(network_id: current_network)
    end

    def networks
      Network.all
    end
  end
end
