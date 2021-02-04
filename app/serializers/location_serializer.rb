class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :latitude, :longitude
end
