class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :password, :id
end
