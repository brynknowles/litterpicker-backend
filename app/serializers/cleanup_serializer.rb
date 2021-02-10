class CleanupSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :category, :image, :date, :start_time, :end_time, :comment, :cheer
  has_many :user_cleanups
  has_many :users, through: :user_cleanups
end
