class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email, :first_name, :last_name, :phone, :admin
end
