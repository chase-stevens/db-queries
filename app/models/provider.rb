class Provider < ApplicationRecord
  has_many :provider_clients
  has_many :clients, through: :provider_clients
end