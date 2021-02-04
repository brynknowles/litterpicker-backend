class UserSerializer < ActiveModel::Serializer
  attributes :id, :avatar, :username, :password, :age, :catchphrase, :park_badge, :playground_badge, :shoreline_badge, :trail_badge, :general_badge
  has_many :cleanups
end
