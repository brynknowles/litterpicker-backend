class CleanupSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :category, :date, :start_time, :end_time, :comment
  has_one :user
  has_one :location
end
