class Client < ApplicationRecord
  has_many :provider_clients
  has_many :providers, through: :provider_clients
  has_many :plans, through: :provider_clients

  has_many :journal_entries
end