class AdopterSerializer < ActiveModel::Serializer
  attributes :id, :name, :contact_info, :email
  has_many :pets
end
