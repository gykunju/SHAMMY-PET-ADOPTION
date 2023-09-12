class Adoption < ApplicationRecord
    belongs_to :pet
    validates :contact, presence: true
    validates :location, presence: true
    validates :reason, presence: true
end
