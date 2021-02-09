class Cleanup < ApplicationRecord
  has_many :user_cleanups, dependent: :destroy
  has_many :users, through: :user_cleanups
end
