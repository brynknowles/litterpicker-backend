class UserCleanupSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :cleanup
end
