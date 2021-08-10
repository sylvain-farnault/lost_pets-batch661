class Pet < ApplicationRecord
  SPECIES = %w[dog cat rabbit fish rat horse].freeze
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
