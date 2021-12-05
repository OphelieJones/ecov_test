class Network < ApplicationRecord
  has_many :users
  has_many :rides

  validates :current_network, uniqueness: true
end
