class Plan < ApplicationRecord
  belongs_to :provider_client

  enum tiers: {
    basic: 'basic',
    premium: 'premium'
  }

  validates :tier, presence: true, inclusion: { in: tiers.keys }
end