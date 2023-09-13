class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :species, :age, :description, :image, :is_adopted

  def is_adopted
    Adoption.exists?(pet_id: object.id)
  end
end