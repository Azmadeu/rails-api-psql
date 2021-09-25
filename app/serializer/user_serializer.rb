class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :email, :status, :sex
   end