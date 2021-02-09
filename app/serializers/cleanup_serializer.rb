class CleanupSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :category, :image, :date, :duration, :comment, :cheer
  has_many :users
end
