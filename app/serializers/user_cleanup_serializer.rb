class UserCleanupSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  belongs_to :cleanup
end
