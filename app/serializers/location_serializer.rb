class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :latitude, :longitude
  has_many :cleanups
end
