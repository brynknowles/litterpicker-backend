class UserSerializer < ActiveModel::Serializer
  attributes :id, :avatar, :username, :age, :catchphrase, :park_badge, :playground_badge, :shoreline_badge, :trail_badge, :earth_steward_badge
  has_many :cleanups
end
