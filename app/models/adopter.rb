class Adopter < ApplicationRecord
    has_many :pets, dependent: :destroy
  end