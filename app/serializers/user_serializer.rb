class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :user_name, :admin
end
