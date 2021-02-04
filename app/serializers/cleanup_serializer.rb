class CleanupSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :image, :date, :duration, :comment, :cheer
  has_one :user
  has_one :location
end
