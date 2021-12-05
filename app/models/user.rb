class User < ApplicationRecord
  has_many :driver_rides
  has_many :passenger_rides
  belongs_to :network, optional: true

  validates :email, :network_id, presence: true
end
