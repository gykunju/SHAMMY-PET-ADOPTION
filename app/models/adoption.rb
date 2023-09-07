class Adoption < ApplicationRecord

    validates :contact, presence: true
    validates :location, presence: true
    validates :reason, presence: true
end
