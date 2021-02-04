class UserSerializer < ActiveModel::Serializer
  attributes :id, :avatar, :user_name, :password, :catchphrase, :badge1, :badge2, :badge3, :badge4, :badge5
end
