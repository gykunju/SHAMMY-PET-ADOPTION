class AdopterSerializer < ActiveModel::Serializer
  attributes :id, :contact_info, :email
  has_many :pets
end
