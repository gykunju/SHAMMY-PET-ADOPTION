class AdoptionSerializer < ActiveModel::Serializer
  attributes :id, :pet

  def pet
    PetSerializer.new(object.pet, root: false) if object.pet
  end

end
