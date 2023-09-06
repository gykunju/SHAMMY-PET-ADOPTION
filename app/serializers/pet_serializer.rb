class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :age, :image, :description
  belongs_to :adopter
end
